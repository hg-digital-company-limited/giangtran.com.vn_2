<?php

namespace App\Livewire\Page;

use Livewire\Component;
use App\Models\Blog;

class BlogDetail extends Component
{
    public $blog;

    public function mount($slug)
    {
        $this->blog = Blog::where('slug', $slug)->first();
        if ($this->blog) {
            $this->blog->views++;
            $this->blog->save();
        } else {
            return abort(404);
        }
    }

    public function render()
    {
        return view('livewire.page.blog-detail');
    }
}

