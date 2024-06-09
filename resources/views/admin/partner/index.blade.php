@extends('layouts.admin')
@section('admin_content')
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.css">
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Business Partner </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <a href="{{ route('create.partner') }}" class="btn btn-primary" > + Add New partner</a>
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
                <h3 class="card-title">All Business Partner</h3>
              </div>
              <!-- /.card-header -->
                <div class="card-body">
                  <table id="example1" class="table table-bordered table-striped table-sm">
                    <thead>
                    <tr>
                      <th>SL</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Role</th>
                      <th>Commission Rate</th>
                      <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>

                   @foreach($data as $key=>$row) 	
                    <tr>
                      <td>{{ $key+1 }}</td>
                      <td>{{ $row->name }}</td>
                      <td>{{ $row->email }}</td>
                      <td>
                      	@if($row->sales_partner==1) <span class="badge badge-success">Sales partner</span>@endif
                      	
                      </td>
                      <td>{{ $row->commission_rate }}</td>
                      <td>
                      	<a href="{{ route('partner.edit',$row->id) }}" class="btn btn-info btn-sm edit" ><i class="fas fa-edit"></i></a>
                      	<a href="{{ route('partner.delete',$row->id) }}" class="btn btn-danger btn-sm" id="delete"><i class="fas fa-trash"></i></a>
                      </td>
                    </tr>
                   @endforeach	
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
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.js"></script>





@endsection