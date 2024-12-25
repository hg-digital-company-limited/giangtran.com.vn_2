<?php

namespace App\Livewire;
use App\Helpers\SettingsHelper;
use Livewire\Attributes\Layout;
use Livewire\Component;

class Maintenance extends Component
{
    public function mount()
    {
        if (!SettingsHelper::getSetting('maintenance')) {
            return redirect('/');
        }
    }
    #[Layout('components.layouts.default')]
    public function render()
    {
        return view('livewire.maintenance');
    }
}
