<?php

namespace App\Services;

use AmrShawky\LaravelCurrency\Facade\Currency;
use App\Http\Resources\Home\PostResource;
use App\Http\Resources\Home\ProjectResource;
use App\Models\Agent;
use App\Models\Area;
use App\Models\Post;
use App\Models\Project;
use App\Models\ProjectUnitDetails;
use App\Models\SubArea;
use App\Traits\DefaultImage;
use App\Traits\PhotoTrait;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;
use Validator;

class ProjectService
{
    use DefaultImage,PhotoTrait;


    public function projects_ads($request){
        $currency =$request->header('currency');
//        dd($currency);
        session(['currency'=>$currency]);
        session(['user_id'=>$request->user_id]);
        $data = Project::latest()->paginate(10);
        return response()->json( $data, 200);
    }


    public function store($request){

        try {
            $validator = Validator::make($request->all(), [
                'user_id' => 'nullable|numeric|exists:users,id',
                'company_id' => 'nullable|numeric',
                'project_status' => 'required',
                'area_id' => 'required|numeric|exists:areas,id',
                'sub_area_id' => 'required|numeric|exists:sub_areas,id',
                'title_ar' => 'required|max:190',
                'title_en' => 'required|max:190',
                'title_ku' => 'required|max:190',
                'description_ar' => 'required|max:190',
                'description_en' => 'required|max:190',
                'description_ku' => 'required|max:190',
                'type' => 'required|max:190',
                'min_price' => 'required',
                'max_price' => 'required',
//            'currency' => 'required',
                'area_range' => 'required',
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
            ], [
                'user_id.exists' => '404',
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
//            return $this->final_response(collect($validator->errors())->flatten(1), 'failed', 422, 'yes');
                return helperJson(null, collect($validator->errors())->flatten(1), 422);

            }
            $inputs = $request->all();
            /* add product info */

            DB::beginTransaction();
            $area =  Area::find($inputs["area_id"]);
            $sub_area =  SubArea::find($inputs["sub_area_id"]);
            $inputs['location_name_ar'] = $sub_area->name_ar . " - ". $area->name_ar;
            $inputs['location_name_en'] = $sub_area->name_en . " - ". $area->name_en;
            $inputs['location_name_ku'] = $sub_area->name_ku . " - ". $area->name_ku;
            $inputs['user_id'] = auth()->user()->id;
            $project = Project::create($inputs);

            /* add post images */
            if($request->images && !is_null($inputs['images'])){
//            dd($request->images);
                foreach($request->images as $image){

                    $project->images()->create([
                        'attachment' => $this->saveImage($image,'post/images/','image'),
                        'type' => 'image'
                    ]);
                }
            }

            /* add videos images */
            if($request->videos){
                foreach($request->videos as $video){
                    $project->videos()->create([
                        'attachment' => $this->uploadFiles('projects/videos/',$video),
                        'type' => 'video'
                    ]);
                }
            }
            /* add videos images */
            if($request->amenities){
                foreach($request->amenities as $service){
                    $project->services()->create([
                        'service_id' => $service
                    ]);
                }
            }
            if($request->floor_plans){
                foreach($request->floor_plans as $image){
                    $project->images()->create([
                        'attachment' => $this->saveImage($image,'post/file/','image'),
                        'type' => 'file'
                    ]);
                }
            }
            //add project payment_plan
            if($request->payment_plans){
                foreach($request->payment_plans as $payment_plan){
                    $project->payment_plans()->create([
                        'title' => $payment_plan['title'],
                        'percent' => $payment_plan['percent']
                    ]);
                }
            }
            //add project payment_plan
            if($request->unit_details){
                foreach($request->unit_details as $unit_detail){
                    ProjectUnitDetails::create([
                        'project_id' => $project->id,
                        'price' => $unit_detail['price'],
                        'area' => $unit_detail['area'],
                        'bedrooms' => $unit_detail['bedrooms'],
                        'bathrooms' => $unit_detail['bathrooms']
                    ]);
                }
            }


            DB::commit();
            return helperJson($project, 'success');
        }catch(Exception $exception){

            DB::rollBack();
            return response()->json(['error' => $exception->getMessage()]);
        }


    }

    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     * to retrieve ads for authorized user
     */
    public function get_project_details($request,$id){
        $currency =$request->header('currency');
        session(['currency'=>$currency]);
        session(['user_id'=>$request->user_id]);
        $project = Project::where(['id'=> $id])->first();
        $project->update(['views' => ++$project->views]);
        $project = Project::find($id);
        $data['project_details'] =$project;
        $data['more_projects'] = Project::where('company_id',$project->company_id)->orderBy('id', 'desc')->take(5)->get();
        return response()->json(['data' => $data], 200);
    }


    public function projects_by_user($user_id)
    {
        session(['user_id'=>$user_id]);
        $data = Project::where(['user_id'=>$user_id])->latest()->get();
        return response()->json(['data' => $data], 200);
    }

    public function agents_by_user($user_id)
    {
        $data = Agent::where(['user_id'=>$user_id])->get();
        return response()->json(['data' => $data], 200);
    }

    public function destroy($id)
    {
        try {
            $ad = Project::find($id);

            if(!isset($ad)){
                return helperJson(null, 'Project Not Found',  Response::HTTP_NO_CONTENT);
            }
            $ad->delete();
            return helperJson(null, 'Project Deleted Successfully',  Response::HTTP_OK);
        }catch(Exception $e){
            return helperJson(null, 'Process Failed ',  Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
}
