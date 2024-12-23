<?php

namespace App\Livewire\Page\Profile\Form;
use App\Repositories\ActivityHistory\ActivityHistoryEloquentRepository;
use Jantinnerezo\LivewireAlert\LivewireAlert;

use Livewire\Component;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
class ChangeInfo extends Component
{
    use LivewireAlert;

    public  $contact;
    public function mount()
    {
        $this->contact = Auth::user()->contact;
    }

       public function saveProfile()
    {

        $user = User::where('id', Auth::id())->update([
            'contact' => $this->contact,
        ]);
        if ($user) {
            $this->alert('success', 'Cập nhật thông tin thành công!');
            ActivityHistoryEloquentRepository::logActivity('Cập nhật thông tin tài khoản!');
        }
    }
    public function render()
    {
        return view('livewire.page.profile.form.change-info');
    }
}
