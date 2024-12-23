<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;
class AdminAccess
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next)
    {
        // Check if the user is authenticated
        if (!Auth::check()) {
            return $next($request);
        }

        // Check if the authenticated user has the required email
        if (Auth::user()->email === 'admin@gmail.com') {
            return $next($request);
        }

        // Abort access if the user does not have the required email
        abort(403, 'Unauthorized access.');
    }
}
