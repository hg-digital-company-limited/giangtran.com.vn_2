<?php

namespace App\Livewire\Page\Home\Widget;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Account extends Component
{

    public function render()
    {
        return view('livewire.page.home.widget.account');
    }
    public function logout()
    {
        Auth::logout();
        Cookie::queue(Cookie::forget('username'));
        Cookie::queue(Cookie::forget('password'));
        return redirect('/login');
    }
}
