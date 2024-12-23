<?php
namespace App\Repositories\SourceCodeOrder;

use App\Repositories\EloquentRepository;
use Illuminate\Support\Carbon;
use App\Repositories\SourceCodeOrder\SourceCodeOrderRepositoryInterface;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
class SourceCodeOrderEloquentRepository extends EloquentRepository implements SourceCodeOrderRepositoryInterface
{
    /**
     * get model
     * @return string
     */
    public function getModel()
    {
        return \App\Models\SourceCodeOrder::class;
    }
    public function createSourceCodeOrder($data)
    {
        return $this->_model->create(attributes: $data);
    }
    public function getAllByUser($userId)
    {
        return $this->_model->where('user_id', $userId)->orderBy('created_at', 'desc')->get();
    }
}
