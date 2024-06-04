@php
$category=DB::table('categories')->orderBy('category_name','ASC')->get();
@endphp

<nav class="main_nav">
			<div class="container">
				<div class="row">
					<div class="">
						<div class="main_nav_content d-flex flex-row">
                        <div class="main_nav_menu ml-auto">  <!-- DEVELOPED BY SHOUMEN MONDAL https://github.com/Shoumen-->
                                        <ul class="standard_dropdown main_nav_dropdown">
                                            <li><a href="{{ url('/') }}">Home<i class="fas fa-chevron-down"></i></a></li>
                                            @foreach($category as $row)	
                                            @php
                                            $subcategory=DB::table('subcategories')->where('category_id',$row->id)->get();
                                            @endphp


                                            <li>
                                                <a href="{{ route('categorywise.product',$row->id) }}" img src="{{ asset($row->icon) }}" height="18" width="18">{{ $row->category_name }}<i class="fas fa-chevron-down"></i></a>
                                                <ul>
                                                    @foreach($subcategory as $row)
                                                    @php
                                                    $childcategory=DB::table('childcategories')->where('subcategory_id',$row->id)->get();
                                                    @endphp
                                                    <li class="hassubs">
                                                        <a href="{{ route('subcategorywise.product',$row->id) }}">{{ $row->subcategory_name }}<i class="fas fa-chevron-down"></i></a>
                                                        <ul>
                                                            @foreach($childcategory as $row)
                                                            <li><a href="{{ route('childcategorywise.product',$row->id) }}">{{ $row->childcategory_name }}<i class="fas fa-chevron-down"></i></a></li> 
                                                            @endforeach
                                                        </ul>
                                                    </li>
                                                    @endforeach
                                                </ul>
                                            </li>
                                            
                                            @endforeach
                                            
                                            <li><a href="index.html">Campaign<i class="fas fa-chevron-down"></i></a></li>
                                            <li><a href="index.html">Helpline<i class="fas fa-chevron-down"></i></a></li>
                                            <li><a href="blog.html">Blog<i class="fas fa-chevron-down"></i></a></li>
                                            <li><a href="contact.html">Contact<i class="fas fa-chevron-down"></i></a></li>
                                        </ul>    
                                </div>
							
							<!-- Menu Trigger -->

							<div class="menu_trigger_container ml-auto">
								<div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
									<div class="menu_burger">  <!-- DEVELOPED BY SHOUMEN MONDAL https://github.com/Shoumen-->
										<div class="menu_trigger_text">menu</div>
										<div class="cat_burger menu_burger_inner"><span></span><span></span><span></span></div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</nav>