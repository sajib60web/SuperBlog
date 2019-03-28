<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
    public function addCategory(Request $request)
    {
    	$this->validate($request,[
            'cat_name'=>'required|min:2|max:50'
        ]);
        
    	$category = new Category();
    	$category->cat_name = $request->cat_name;
    	$category->save();
    	return ['massage' => 'OK'];
    }

    public function categoryList()
    {
        $categories = Category::all();
        return response()->json([
            'categories'=>$categories
        ],200);
    }

    public function deleteCat($id)
    {
        $category = Category::find($id);
        $category->delete();
    }

    public function editcategory($id)
    {
        $category = Category::find($id);
        return response()->json([
            'category'=>$category
        ],200);
    }

    public function updateCategory(Request $request,$id)
    {
        $this->validate($request,[
            'cat_name'=>'required|min:2|max:50'
        ]);
        $category = Category::find($id);
        $category->cat_name = $request->cat_name;
        $category->save();
    }

    public function selected_category($ids)
    {
        $all_id = explode(',',$ids);
        foreach ($all_id as $id){
            $category = Category::find($id);
            $category->delete();
        }
    }
}
