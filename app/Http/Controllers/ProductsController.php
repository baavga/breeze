<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
class ProductsController extends Controller
{
    public function show($slug){ 
        $product = Product::where('slug',$slug)->first();    
         $products = Product::inRandomOrder()->get()->take(3);
         return view('products.show',array('product'=>$product, 'products'=>$products));
    }
}
