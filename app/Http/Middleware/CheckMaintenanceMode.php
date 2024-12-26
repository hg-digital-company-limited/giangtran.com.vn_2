<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Helpers\SettingsHelper;

class CheckMaintenanceMode
{
    public function handle(Request $request, Closure $next)
    {
        if (SettingsHelper::getSetting('maintenance') == 1) {
            return redirect()->route('home'); // Adjust to your maintenance route
        }

        return $next($request);
    }
}
