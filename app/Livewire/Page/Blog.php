<?php

namespace App\Livewire\Page;

use App\Models\Blog as BlogModel;
use Livewire\Component;

class Blog extends Component
{
    public $blog1;
    public $blog2;
    public $blog3;
    public $blogs;

    public function mount()
    {
        $this->blog1 = BlogModel::first();
        $this->blog2 = BlogModel::skip(1)->first();
        $this->blog3 = BlogModel::skip(2)->first();
        $this->blogs = BlogModel::skip(3)->limit(4)->get();
    }
    public function render()
    {
        return view('livewire.page.blog');
    }
}
