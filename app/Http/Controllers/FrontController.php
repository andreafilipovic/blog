<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;

class FrontController extends Controller
{
    protected $data=[];
    public function __construct(){
        
        $modelPost=new Post();
        $modelCat=new Category();
        $categories=$modelCat->getAllCategories();
        $latestPosts=$modelPost->getLatesPosts();

        $this->data = [
            "categories" => $categories,
            "latest_posts"=>$latestPosts
          
        ];
    }

    public function author(){
        return view('pages.author',$this->data);
    }
}
