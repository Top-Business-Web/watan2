<?php

namespace App\Services;

use App\Models\FilesOfProjectsAndPosts;
use App\Models\Post;
use App\Models\Project;
use App\Models\ProjectPaymentPlan;
use App\Models\ProjectUnitDetails;
use App\Models\Service;
use App\Traits\DefaultImage;
use App\Traits\PhotoTrait;
use App\Models\PostService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use mysql_xdevapi\Exception;
use Validator;

class UpdateAdService
{
    use DefaultImage,PhotoTrait;
    public function update($request,$id)
    {
        $validator = Validator::make($request->all(), [
            'status' => 'required',
            'area_id' => 'nullable|numeric|exists:areas,id',
            'sub_area_id' => 'nullable|numeric|exists:sub_areas,id',
            'title_ar' => 'nullable|max:190',
            'title_en' => 'nullable|max:190',
            'title_ku' => 'nullable|max:190',
            'description_ar' => 'nullable',
            'description_en' => 'nullable',
            'description_ku' => 'nullable',
            'furniture' => 'required',
            'type' => 'required|max:190',
            'price' => 'required',
            'currency' => 'nullable',
            'size' => 'nullable',
            'amenities' => 'nullable|array|min:1',
            'bedroom' => 'nullable',
            'bath_room' => 'nullable',
            'kitchen' => 'nullable|numeric',
            'living_room' => 'nullable|numeric',
            'dining_room' => 'nullable|numeric',
            'latitude' => 'nullable',
            'longitude' => 'nullable',
            'location_name_ar' => 'nullable',
            'location_name_en' => 'nullable',
            'location_name_ku' => 'nullable',
            'images.*' => 'nullable|image',
            'videos.*' => 'nullable',
            'advertizer_name_ar' => "nullable",
            'advertizer_name_en' => "nullable",
            'advertizer_name_ku' => "nullable",
            'phone' => "required",
            'whatsapp' => "required",
        ]);

        if ($validator->fails()) {
            $errors = collect($validator->errors())->flatten(1)[0];
            if (is_numeric($errors)) {
                $errors_arr = [
                    '404' => 'failed,User Not Found',
                ];
                $code = collect($validator->errors())->flatten(1)[0];
                return helperJson(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 404, $code);
            }
            return helperJson(null, collect($validator->errors())->flatten(1), 422);

        }
        $inputs = $request->all();

        /* add product info */
        $post = Post::find($id);

        if(!empty($inputs['deleted_images'])){
            FilesOfProjectsAndPosts::whereIn('id',$inputs['deleted_images'])->delete();
        }
        if($request->images){
            foreach($request->images as $image){
                $post->images()->create([
                    'attachment' => $this->saveImage($image,'posts/images/','image'),
                    'type' => 'image'
                ]);
            }
        }
        if(!empty($inputs['deleted_videos'])){
            FilesOfProjectsAndPosts::whereIn('id',$inputs['deleted_videos'])->delete();
        }
        /* add videos images */
        if($request->videos){
            foreach($request->videos as $video){
                $post->videos()->create([
                    'attachment' => $this->uploadFiles('posts/videos/', $video),
                    'type' => 'video'
                ]);
            }
        }
        /* add videos images */
        PostService::where('post_id',$post->id)->delete();
        if($request->amenities){
            foreach($request->amenities as $service){
                $post->services()->create([
                    'service_id' => $service
                ]);
            }
        }
        $post->update($inputs);
        return helperJson($post, 'success');
    }

    public function update_project($request,$id)
    {
        try {
            $validator = Validator::make($request->all(), [
                'project_status' => 'nullable',
                'area_id' => 'nullable|numeric|exists:areas,id',
                'sub_area_id' => 'nullable|numeric|exists:sub_areas,id',
                'title_ar' => 'nullable|max:190',
                'title_en' => 'nullable|max:190',
                'title_ku' => 'nullable|max:190',
                'description_ar' => 'nullable',
                'description_en' => 'nullable',
                'description_ku' => 'nullable',
                'type' => 'nullable',
                'min_price' => 'required',
                'max_price' => 'required',
                'area_range' => 'nullable',
                'amenities' => 'nullable|array|min:1',
                'latitude' => 'nullable',
                'longitude' => 'nullable',
                'location_name_ar' => 'nullable',
                'location_name_en' => 'nullable',
                'location_name_ku' => 'nullable',
                'images.*' => 'nullable|image',
                'videos.*' => 'nullable',
                'advertizer_name' => "nullable",
                'phone' => "required",
                'whatsapp' => "required",
            ]);

            if ($validator->fails()) {
                $errors = collect($validator->errors())->flatten(1)[0];
                if (is_numeric($errors)) {
                    $errors_arr = [
                        '404' => 'failed,User Not Found',
                    ];
                    $code = collect($validator->errors())->flatten(1)[0];
                    return helperJson(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 404, $code);
                }
                return helperJson(null, collect($validator->errors())->flatten(1), 422);

            }
            $inputs = $request->all();

            DB::beginTransaction();

            $project = Project::find($id);
            if (!empty($inputs['deleted_images'])) {
                FilesOfProjectsAndPosts::whereIn('id', $inputs['deleted_images'])->delete();
            }
            /* add post images */
            if ($request->images && !is_null($inputs['images'])) {
                foreach ($request->images as $image) {
                    $project->images()->create([
                        'attachment' => $this->saveImage($image, 'projects/images/', 'image'),
                        'type' => 'image'
                    ]);
                }
            }
            if (!empty($inputs['deleted_videos'])) {
                FilesOfProjectsAndPosts::whereIn('id', $inputs['deleted_videos'])->delete();
            }
            /* add videos images */
            if ($request->videos) {
                foreach ($request->videos as $video) {
                    $project->videos()->create([
                        'attachment' => $this->uploadFiles('projects/videos/', $video),
                        'type' => 'video'
                    ]);
                }
            }
            //floor_plans update
            if(!empty($inputs['deleted_floor_plans'])){
                FilesOfProjectsAndPosts::whereIn('id',$inputs['deleted_floor_plans'])->delete();
            }
            /* add post images */
            if($request->floor_plans){
                foreach($request->floor_plans as $image){
                    $project->images()->create([
                        'attachment' => $this->saveImage($image,'post/file/','image'),
                        'type' => 'file'
                    ]);
                }
            }
            /* add amenities */
            PostService::where('project_id',$project->id)->delete();
            if ($request->amenities) {
                foreach($request->amenities as $service){
                    $project->services()->create([
                        'service_id' => $service
                    ]);
                }
            }
            //add project payment_plan
            if (!empty($inputs['deleted_payment_plans'])) {
                ProjectPaymentPlan::whereIn('id', $inputs['deleted_payment_plans'])->delete();
            }
            if ($request->payment_plans) {
                $project->payment_plans()->createMany($request->payment_plans);
            }
            if (!empty($inputs['deleted_unit_details'])) {
                ProjectUnitDetails::whereIn('id', $inputs['deleted_unit_details'])->delete();
            }
            //add project payment_plan
            if ($request->unit_details) {
                foreach ($request->unit_details as $unit_detail) {
                    ProjectUnitDetails::create([
                        'project_id' => $project->id,
                        'price' => $unit_detail['price'],
                        'area' => $unit_detail['area'],
                        'bedrooms' => $unit_detail['bedrooms'],
                        'bathrooms' => $unit_detail['bathrooms']
                    ]);
                }
            }

            $project->update($inputs);
            DB::commit();
            return helperJson($project, 'success');
        }catch(Exception $exception){
            DB::rollBack();
            return response()->json(['error' => $exception->getMessage()]);
        }
    }
}
