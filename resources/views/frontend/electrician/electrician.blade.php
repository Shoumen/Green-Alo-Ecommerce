@extends('layouts.app')
@section('content')
<link rel="stylesheet" type="text/css" href="{{ asset('frontend') }}/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend') }}/styles/contact_styles.css">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend') }}/styles/contact_responsive.css">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend') }}/styles/main_styles.css">
@include('layouts.front_partial.collaps_nav')
	

	<!-- Contact Form -->

	<div class="contact_form">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="contact_form_container">
						<div class="contact_form_title">All Electrician</div>

						    <form action="#" id="contact_form">
                                <div class="contact_form_inputs d-flex flex-md-row flex-column justify-content-between align-items-between">
                                    
                                <div class="form-group col-3">
              		                    <label>Division</label>
                                        <select class="form-control submitable" name="" id="">
                                            <option value="">All</option>
                                            
                                                <option value=""></option>
                                            
                                        </select>
              	                 </div>
                                    <div class="form-group col-3">
                                        <label>District</label>
                                        <select class="form-control submitable" name="" id="">
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
              	
			            </div>
					
						<div class="product_panel panel active">
                                <div class="featured_slider slider">
                                  
                                    <!-- Slider Item -->
                                    <div class="featured_slider_item">
                                        <div class="border_active"></div>
                                        <div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                            <div class="product_image d-flex flex-column align-items-center justify-content-center">
                                                <img src="" alt="" height="100%" width="60%">
                                            </div>
                                            <div class="product_content">
                                                
                                                  <div class="product_price discount"></div>
                                               
                                                  <div class="product_price discount"><span></span></div>
                                                
                                                <div class="product_name"><div>
                                                    <a href="#"></a></div>
                                                </div>
                                                <div class="product_extras">
                                                    <div class="product_color">
                                                       <a href="#" class="quick_view" id="" data-toggle="modal" data-target="#exampleModalCenter">quick view</a>
                                                    </div>
                                                    <button class="product_cart_button quick_view"  id="" data-toggle="modal" data-target="#exampleModalCenter">Add to Cart</button>
                                                </div>
                                            </div>
                                            <a href="#">
                                               <div class="product_fav">
                                                  <i class="fas fa-heart"></i>
                                               </div>
                                            </a>
                                            <ul class="product_marks">
                                                <li class="product_mark product_discount">new</li>
                                                
                                            </ul>
                                        </div>
                                    </div>
                                   
                                 </div>
                                <div class="featured_slider_dots_cover"></div>
                            </div>
                   
							
							
						</form>
                        <!-- https://github.com/Shoumen -->
					</div>
				</div>
			</div>
		</div>
		
	</div>

	<!-- Map -->

	<div class="contact_map">
		<div id="google_map" class="google_map">
			<div class="map_container">
				<div id="map"></div>
			</div>
		</div>
	</div>
	



	<hr>

     
        
@endsection
