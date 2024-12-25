<?php

namespace App\Livewire\Inc;

use Livewire\Component;

class Seo extends Component
{
    public $title;
    public $description;
    public $keywords;
    public $image;
    public function mount($title = null, $description = null, $keywords = null, $image = null)
    {
        $this->title = $title;
        $this->description = $description;
        $this->keywords = $keywords;
        $this->image = $image;
    }
    public function render()
    {
        return view('livewire.inc.seo');
    }
}
