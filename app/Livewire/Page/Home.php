<?php

namespace App\Livewire\Page;

use App\Repositories\SmmOrder\SmmOrderRepositoryInterface;
use App\Repositories\SourceCodeOrder\SourceCodeOrderRepositoryInterface;
use Auth;
use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert;
class Home extends Component
{

    use LivewireAlert;
    protected $smmOrderRepository;
    protected $sourceCodeRepository;
    public $countSmmOrder;
    public $countSourceCodeOrder;
    public function mount(SmmOrderRepositoryInterface $smmOrderRepository, SourceCodeOrderRepositoryInterface $sourceCodeRepository)
    {
        $this->smmOrderRepository = $smmOrderRepository;
        $this->sourceCodeRepository = $sourceCodeRepository;
        if (Auth::check()) {
            $this->countSmmOrder = $this->smmOrderRepository->getOrdersByCurrentUser()->count();
            $this->countSourceCodeOrder = $this->sourceCodeRepository->getAllByUser(Auth::user()->id)->count();
        }
    }
    public function logout()
    {
        Auth::logout();
        return redirect('/login');
    }

    public function render()
    {
        return view('livewire.page.home');
    }
}
