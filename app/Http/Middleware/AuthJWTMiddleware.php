<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use JWTAuth;

class AuthJWTMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
//        dd('ddd');
        try {
            $user = JWTAuth::parseToken()->authenticate();
        } catch (Exception $e) {
            if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenInvalidException){
                return helperJson(null,'Token is Invalid',430);
            }else if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenExpiredException){
                return helperJson(null,'Token is Expired',430);
            }else{
                return helperJson(null,'Authorization Token not found',430);
            }
        }
        return $next($request);
    }
}
