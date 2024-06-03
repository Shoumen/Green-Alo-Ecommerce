<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Childcategory;

class AjaxController extends Controller
{
    public function childCategory($id){
        $allChild = Childcategory::where('subcategory_id', $id)->get();
        return view('admin.ajax.product', compact('allChild'));
    }
}
