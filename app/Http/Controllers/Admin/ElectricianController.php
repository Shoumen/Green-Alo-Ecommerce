<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Auth;
use Illuminate\Support\Str;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\Exceptions\DecoderException;
use Intervention\Image\Decoders\Base64ImageDecoder;
use Intervention\Image\Decoders\FilePathImageDecoder;
use App\Models\electrician;
use DataTables;
use File;

class ElectricianController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(Request $request)
    {
    	if ($request->ajax()) {
            $imgurl='files/electrician';
            // $data=electrician::latest()->all();
    		$data=DB::table('electtricians')->get();
    		return DataTables::of($data)
    				->addIndexColumn()
                    ->editColumn('thumbnail',function($row) use( $imgurl){
                        return '<img src="'.$imgurl.'/'.$row->thumbnail.'" hright="30" width="30">';
                     })


                    // ->editColumn('user',function($row){
                    //    return $row->user->name;
                    // })
                    ->editColumn('elec_status',function($row){
                        if ($row->elec_status==1) {
                            return '<a href="#" data-id="'.$row->id.'" class="deactive_status"><i class="fas fa-thumbs-down text-danger"></i> <span class="badge badge-success">active</span> </a>';
                        }else{
                            return '<a href="#" data-id="'.$row->id.'" class="active_status"><i class="fas fa-thumbs-up text-danger"></i> <span class="badge badge-danger">deactive</span> </a>';
                        }
                    })
    				->addColumn('action', function($row){
    					$actionbtn='
                        <a href="#" class="btn btn-info btn-sm edit" data-id="'.$row->id.'" data-toggle="modal" data-target="#editModal" ><i class="fas fa-edit"></i></a>
                        <a href="#" class="btn btn-primary btn-sm edit" data-id="'.$row->id.'" data-toggle="modal" data-target="#editModal" ><i class="fas fa-eye"></i></a>
                      	<a href="'.route('brand.delete',[$row->id]).'" class="btn btn-danger btn-sm" id="delete"><i class="fas fa-trash"></i>
                      	</a>';
                       return $actionbtn;
    				})
    				->rawColumns(['action','name','thumbnail','elec_status'])
    				->make(true);
    	}

    	return view('admin.electrician.index');
    }


    public function create()
    {
        // $category=DB::table('categories')->get();  // Category::all();
        // $brand=DB::table('brands')->get();          // Brand::all();
        // $pickup_point=DB::table('pickup_point')->get();  // Pickuppoint::all();
        // $warehosue=DB::table('warehouses')->get();  // Warehouse::all();

        return view('admin.electrician.create');
    }
     //product store method
     public function store(Request $request)
     {
        $validated = $request->validate([
            'elec_name' => 'required',
            // 'elec_phone' => 'required|unique:products|max:55',
            // 'elec_email' => 'required',
            'elec_password' => 'required',
            'elec_nid_number' => 'required',
            'elec_description' => 'required',
        ]);

        $slug=Str::slug($request->elec_name, '-');
        $creator= Auth::user()->id;
 
 
        $data=array();
        $data['elec_name']=$request->elec_name;
        $data['elec_slug']=Str::slug($request->elec_name, '-');
        $data['elec_phone']=$request->elec_phone;
        $data['elec_email']=$request->elec_email;
        $data['elec_password']=$request->elec_password;
        $data['elec_nid_number']=$request->elec_nid_number;
        $data['division']=$request->division;
        $data['district']=$request->district;
        $data['upazila']=$request->upazila;
        $data['elec_address']=$request->elec_address;
        $data['elec_description']=$request->elec_description;
        $data['elec_remarks']=$request->elec_remarks;
        $data['elec_status']=$request->elec_status;
        $data['elec_creator']=$creator;
        

        //single thumbnail
        
        if ($request->hasfile('thumbnail')) {
             $manager = new ImageManager(new Driver());
             $image = $request->file('thumbnail');
             $photoname=$slug.'.'.$image->getClientOriginalExtension();
             $image = $manager->read($image);
             $image = $image->resize(600,600);
             $image->save('files/electrician/'.$photoname);
             $data['thumbnail']=$photoname;   // public/files/product/plus-point.jpg
 
        }
        //multiple images
        $images = array();
        if($request->hasFile('images')){
         $manager = new ImageManager(new Driver());
            foreach ($request->file('images') as $key => $image) {
                $imageName= hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
                $image = $manager->read($image);
                $image = $image->resize(600,600)->save('files/electrician/'.$imageName);
                array_push($images, $imageName);
            }
            $data['images'] = json_encode($images);
        }
        DB::table('electtricians')->insert($data);
        $notification=array('messege' => 'Electrician Created!', 'alert-type' => 'success');
        return redirect()->back()->with($notification);
 
     }
    public function edit($id)
    {
        // $product=DB::table('products')->where('id',$id)->first();
        // //$product=Product::findorfail($id);
        // $category=Category::all();
        // $brand=Brand::all();
        // $warehouse=DB::table('warehouses')->get();
        // $pickup_point=DB::table('pickup_point')->get();
        //  //childcategory get_
        // $childcategory=DB::table('childcategories')->where('category_id',$product->category_id)->get();
        // dd($childcategory);
        return view('admin.electrician.edit');
    }
    //not status
    public function notstatus($id)
    {
        DB::table('electtricians')->where('id',$id)->update(['status'=>0]);
        return response()->json('electtrician Deactive');
    }

    //active staus
    public function activestatus($id)
    {
        DB::table('electtricians')->where('id',$id)->update(['status'=>1]);
        return response()->json('electtrician Activated');
    }
}
