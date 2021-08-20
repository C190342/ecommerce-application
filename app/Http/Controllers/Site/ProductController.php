<?php

namespace App\Http\Controllers\Site;

use Cart;
use Illuminate\Http\Request;
use App\Contracts\ProductContract;
use App\Http\Controllers\Controller;
use App\Contracts\AttributeContract;
use Illuminate\Support\Facades\Log;
use App\Models\ProductImage;

class ProductController extends Controller
{
    //
    protected $productRepository;
    protected $attributeRepository;

    public function __construct(ProductContract $productRepository, AttributeContract $attributeRepository)
    {
        $this->productRepository = $productRepository;
        $this->attributeRepository = $attributeRepository;
    }

    public function show($slug)
    {
        $product = $this->productRepository->findProductBySlug($slug);
        $attributes = $this->attributeRepository->listAttributes();
        //dd($product);
        return view('site.pages.details', compact('product', 'attributes'));
    }

    public function search($slug)
    {
        //$product = $this->productRepository->findProductBySlug($slug);
        //$attributes = $this->attributeRepository->listAttributes();
        //dd($product);
        //return view('site.pages.search', compact('product', 'attributes'));
        if ($slug == 1) {
            return view('site.pages.search1');
        }
        return view('site.pages.search');
    }

    public function addToCart(Request $request)
    {
        $product = $this->productRepository->findProductById($request->input('productId'));
        $options = $request->except('_token', 'productId', 'price', 'qty');
        $images = ProductImage::where('product_id', '=', $request->input('productId'))->first();
        $image = '';
        if ($images) {
            $image = $images->full;
        }
        Log::info($image);
        Cart::add(uniqid(), $product->name, $image, $request->input('price'), $request->input('qty'), $options);

        return redirect()->back()->with('message', 'Item added to cart successfully.');
    }


}