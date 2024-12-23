<?php

namespace App\Livewire\Page\Profile;

use App\Models\ActivityHistory;
use App\Repositories\ActivityHistory\ActivityHistoryRepositoryInterface;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Form extends Component
{

    public $activities; // Thuộc tính để lưu trữ lịch sử hoạt động
    protected $activityHistoryRepository;
    public function mount(ActivityHistoryRepositoryInterface $activityHistoryRepository)
    {
        $this->activityHistoryRepository = $activityHistoryRepository;

        $this->activities = $this->activityHistoryRepository->getActivitiesByUserId(Auth::id());

    }


    public function render()
    {
        return view('livewire.page.profile.form');
    }
}
