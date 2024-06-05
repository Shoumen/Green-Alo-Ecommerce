@extends('layouts.admin')
@section('admin_content')

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Electrician</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <a href="{{ route('electrician.create') }}" class="btn btn-primary" > + Add New</a>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div> 
    <!-- /.content-header -->
     <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">All Electrician List </h3>
              </div><br>
              <div class="row p-2">
              	<div class="form-group col-3">
              		<label>Division</label>
              		 <select class="form-control submitable" name="category_id" id="category_id">
              		 	<option value="">All</option>
              		 	 
              		 	    <option value=""></option>
              		 	   
              		 </select>
              	</div>
              	<div class="form-group col-3">
              		<label>District</label>
              		 <select class="form-control submitable" name="brand_id" id="brand_id">
              		 	<option value="">All</option>
              		 	  
              		 	    <option value=""></option>
              		 	  
              		 </select>
              	</div>
              	<div class="form-group col-3">
              		<label>Upazila/Thana</label>
              		 <select class="form-control submitable" name="warehouse" id="warehouse">
              		 	<option value="">All</option>
              		 	  
              		 	    <option value=""></option>
              		 	  
              		 </select>
              	</div>
              	<div class="form-group col-3">
              		<label>Status</label>
              		 <select class="form-control submitable" name="status" id="status">
              		 	<option value="1">All</option>
              		 	    <option value="1">Active</option>
  											<option value="0">Inactive</option>
              		 </select>
              	</div>
              </div>
              <!-- /.card-header -->
                <div class="card-body">
                  <table id="" class="table table-bordered table-striped table-sm ytable">
                    <thead>
                    <tr>
                      <th>SL</th>
                      <th>Image</th>
                      <th>Elec_Name</th>
                      <th>Elec_Phone</th>
                      <th>Elec_Creator</th>
                      <th>Elec_Editor</th>
                      <th>Elec_Status</th>
                      <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>

                  
                    </tbody>
                  </table>
                </div>
	          </div>
	      </div>
	  </div>
	</div>
</section>
</div>



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
	$(function electtricians(){
		table=$('.ytable').DataTable({
			"processing":true,
      "serverSide":true,
      "searching":true,
      "ajax":{
        "url": "{{ route('electrician.index') }}", 
        "data":function(e) {
          e.electrician_name =$("#electrician_name").val();
        //   e.brand_id =$("#brand_id").val();
        //   e.status =$("#status").val();
        //   e.warehouse =$("#warehouse").val();
        }
      },
			columns:[
				{data:'DT_RowIndex',name:'DT_RowIndex'},
				{data:'thumbnail'  ,name:'thumbnail'},
				{data:'elec_name'  ,name:'elec_name'},
				{data:'elec_phone'  ,name:'elec-phone'},
				{data:'elec_creator',name:'elec_creator'},
				{data:'elec_editor',name:'elec_editor'},
				
				{data:'elec_status',name:'elec_status'},
				{data:'action',name:'action',orderable:true, searchable:true},
			]
		});
	});


    //deactive status
	$('body').on('click','.deactive_status', function(){
	    var id=$(this).data('id');
		var url = "{{ url('electrician/not-status') }}/"+id;
		$.ajax({
			url:url,
			type:'get',
			success:function(data){  
	        toastr.success(data);
	        table.ajax.reload();
	      }
	  });
    });

    //Active status
	$('body').on('click','.active_status', function(){
	    var id=$(this).data('id');
		var url = "{{ url('electrician/active-status') }}/"+id;
		$.ajax({
			url:url,
			type:'get',
			success:function(data){  
	        toastr.success(data);
	        table.ajax.reload();
	      }
	    });
    });


	//submitable class call for every change
  $(document).on('change','.submitable', function(){
    $('.ytable').DataTable().ajax.reload();
  });

</script>
@endsection