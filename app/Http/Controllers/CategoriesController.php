<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
class CategoriesController extends Controller
{
    public function floorheat(){
        $category = Category::find(7);
        return view('category.floorheat')->with('products',$category->products()->paginate(6));
    }
    public function sauna(){
        $category = Category::find(2);
        return view('category.sauna')->with('products',$category->products()->paginate(6));
    }
    public function bassein(){
        $category = Category::find(3);
        return view('category.bassein')->with('products',$category->products()->paginate(6));
    }
    public function fountain(){
        $category = Category::find(4);
        return view('category.fountain')->with('products',$category->products()->paginate(6));
    }
    public function other(){
        $category = Category::find(5);
        return view('category.other')->with('products',$category->products()->paginate(6));
    }
    public function boiler(){
        $category = Category::find(6);
        return view('category.boiler')->with('products',$category->products()->paginate(6));
    }
    public function all(){
        $category = Product::paginate(12);
        return view('category.all')->with('products',$category);
    }
    
}
