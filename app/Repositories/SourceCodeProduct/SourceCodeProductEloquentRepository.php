<?php
namespace App\Repositories\SourceCodeProduct;

use App\Repositories\EloquentRepository;
use Illuminate\Support\Carbon;
use App\Repositories\SourceCodeProduct\SourceCodeProductRepositoryInterface;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
class SourceCodeProductEloquentRepository extends EloquentRepository implements SourceCodeProductRepositoryInterface
{
    /**
     * get model
     * @return string
     */
    public function getModel()
    {
        return \App\Models\SourceCodeProduct::class;
    }

    public function getById($id)
    {
        return $this->_model->find($id);
    }
    public function all()
    {
        return $this->_model->all();
    }
    public function getRandomProductsFromSameCategory($id)
    {
        $product = $this->_model->find(id: $id);
        if (!$product) {
            return null;
        }
        $categoryId = $product->category_id;
        return $this->_model->where('category_id', $categoryId)
            ->where('id', '!=', $id)
            ->inRandomOrder()
            ->take(6)
            ->get();
    }
    public function updateSourceCodeProductPurchaseCount($id)
    {
        $sourceCodeProduct = $this->_model->find($id);
        $sourceCodeProduct->purchase_count += 1;
        $sourceCodeProduct->save();
    }
}
