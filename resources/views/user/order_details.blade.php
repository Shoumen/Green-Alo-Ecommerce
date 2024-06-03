@extends('layouts.app')
@section('content')
<style type="text/css">
        #map {
          height: 400px;
        }
    </style>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">
            @include('user.sidebar')
        </div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    {{ __('Dashboard') }}
                </div>
                <div class="card-body mt-2">
                	Name: {{ $order->c_name }} <br>	
                	Phone: {{ $order->c_phone }} <br>	
                	OrderID: {{ $order->order_id }} <br>	
                	Status: @if($order->status==0)
                                 <span class="badge badge-danger">Order Pending</span>
                              @elseif($order->status==1)
                                 <span class="badge badge-info">Order Recieved</span>
                              @elseif($order->status==2)
                                 <span class="badge badge-primary">Order Shipped</span>
                              @elseif($order->status==3)
                                 <span class="badge badge-success">Order Completed</span> 
                              @elseif($order->status==4)
                                 <span class="badge badge-warning">Order Return</span>   
                              @elseif($order->status==5)  
                                 <span class="badge badge-danger">Order Cancel</span>
                              @endif   <br>	
                	Date: {{ date('d F Y'),strtotime($order->c_name)}} <br>	
                	Subtotal: {{ $order->subtotal }} {{ $setting->currency }}<br>	
                	Total: {{ $order->total }} {{ $setting->currency }}<br>

                </div>
                <div id="map"></div>
                  
                <div class="card-body">
                   <h4>My Order hhh</h4>
                   <div>
                       <table class="table">
                         <thead>
                           <tr>
                             <th scope="col">SL</th>
                             <th scope="col">Product</th>
                             <th scope="col">Color</th>
                             <th scope="col">Size</th>
                             <th scope="col">Qty</th>
                             <th scope="col">Price</th>
                             <th scope="col">Subtotal</th>
                           </tr>
                         </thead>
                         <tbody>
                          @foreach($order_details as $key=>$row)
                           <tr>
                             <th scope="row">{{ ++$key }}</th>
                             <td>{{ $row->product_name  }}</td>
                             <td>{{ $row->color }} </td>
                             <td>{{ $row->size }}</td>
                             <td>{{ $row->quantity }}</td>
                             <td>{{ $row->single_price }} {{ $setting->currency }}</td>
                             <td>{{ $row->subtotal_price }} {{ $setting->currency }}</td>
                           </tr>
                          @endforeach 
                         </tbody>
                       </table>
                   </div>
                </div>

                

            </div>
        </div>
    </div>
</div><hr>
<script type="text/javascript">
        function initMap() {
            const myLatLng = { lat: 23.80212, lng: 90.41349 };
            const map = new google.maps.Map(document.getElementById("map"), {
                zoom: 11,
                center: myLatLng,
            });
  
            var locations = {{ Js::from($locations) }};
  
            var infowindow = new google.maps.InfoWindow();
  
            var marker, i;
              
            for (i = 0; i < locations.length; i++) {  
                  marker = new google.maps.Marker({
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                    map: map
                  });
                    
                  google.maps.event.addListener(marker, 'click', (function(marker, i) {
                    return function() {
                      infowindow.setContent(locations[i][0]);
                      infowindow.open(map, marker);
                    }
                  })(marker, i));
  
            }
        }
  
        window.initMap = initMap;
    </script>
  
    <script type="text/javascript"
        src="https://maps.google.com/maps/api/js?key={{ env('GOOGLE_MAP_KEY') }}&callback=initMap" ></script>
  


@endsection
