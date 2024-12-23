<?php

namespace App\Livewire\Page;

use Livewire\Component;

class Home extends Component
{
    public $categories, $products; // Thuộc tính để lưu danh sách danh mục

    public function mount()
    {
    }

    public function render()
    {
        // Lấy ngẫu nhiên 10 sản phẩm cho mỗi danh mục

        return view('livewire.page.home', [
        ]);
    }
}
