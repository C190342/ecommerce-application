<?php

namespace App\Http\Controllers\Site;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Contracts\CategoryContract;
use App\Models\Category;
use DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Pagination\Paginator;
use Illuminate\Pagination\LengthAwarePaginator;


class CategoryController extends Controller
{
    protected $categoryRepository;

    public function __construct(CategoryContract $categoryRepository)
    {
        $this->categoryRepository = $categoryRepository;
    }

    public function show($slug)
    {
        //$slugs = DB::table('products')->pluck('slug');
        //Log::info($slugs);
        $category = $this->categoryRepository->findBySlug($slug);
        //$parent = $category->parent;
        //Log::error($category);
        //return view('site.pages.category', compact('category'));
        
        return view('site.pages.category', compact('category'));
    }
}