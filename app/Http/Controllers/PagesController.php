<?php

namespace App\Http\Controllers;
use App\Product;
use App\Post;
use Illuminate\Http\Request;
class PagesController extends Controller
{
    public function home(){
        $products = Product::orderBy('created_at', 'desc' )->paginate(6);
        return view('pages.home')->with('products',$products);
    }
    public function about(){
        return view('pages.about');
    }
    public function howto(){
        $posts = Post::paginate(6);
        return view('pages.howto')->with('posts',$posts);
    }
    public function show($id){
        $post = Post::find($id); 
        $products = Product::inRandomOrder()->get()->take(3);
        return view('pages.show_post', ['post'=>$post, 'products'=>$products]);
    }
    public function contactus(){
        return view('pages.contactus');
    }
    
    
}
