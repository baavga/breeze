<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
class CategoriesController extends Controller
{
    public function index($slug){
        $category = Category::where('slug',$slug)->first();  
        return view('category.show')->with('products',$category->products()->paginate(6));
    }
  
    
}
