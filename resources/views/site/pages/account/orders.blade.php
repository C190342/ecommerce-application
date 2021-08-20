@extends('site.app')
@section('title', 'Orders')
@section('content')

    <!-- ========================= SECTION PAGETOP ========================= -->
<section class="section-pagetop bg-gray">
<div class="container">
	<h2 class="title-page">My account</h2>
</div> <!-- container //  -->
</section>
<!-- ========================= SECTION PAGETOP END// ========================= -->

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
    <div class="container">

        <div class="row">
            @include('site.partials.profile_sidebar')

            <main class="col-md-9 tab-content">

            @if (Session::has('message'))
                <p class="col-md-12 alert alert-success">{{ Session::get('message') }}</p>
            @endif
            @if (Session::has('error'))
                <p class="col-md-12 alert alert-danger">{{ Session::get('error') }}</p>
            @endif
			
			@forelse ($orders as $order)
			<div id="{{ $order->order_number }}">
				<article class="card mb-4 print-tab" > {{-- order-item  --}}
					<header class="card-header">
						<button class="float-right hidden-print" ><i class="fa fa-print"></i></button>
						<strong class="d-inline-block mr-3">Order ID: {{ $order->order_number }}</strong>
						<span>Order Date: {{ $order->created_at->format('Y/m/d H:i:s') }}</span>
					</header>
					<div class="card-body">
						<div class="row print-position"> 
							<div class="col-md-8 print-left">
								<h6 class="text-muted">Delivery to</h6>
								<p>Full name: {{ $order->last_name }} {{ $order->first_name }} <br>  
								Phone: {{ $order->phone_number }} <br>
								Location: {{ $order->address }}, {{ $order->city }} <br> 
								Country: {{ $order->country }} -- P.O. Box: {{ $order->post_code }}
								</p>
							</div>
							<div class="col-md-4 print-right">
								<h6 class="text-muted">Payment</h6>
								<span class="text-success">
									<i class="fab fa-lg fa-cc-visa"></i>
									Visa  **** 4216  
								</span>
								<p>Subtotal: {{ config('settings.currency_symbol') }}356 <br>
								Shipping fee:  {{ config('settings.currency_symbol') }}56 <br> 
								<span class="b">Total: {{ config('settings.currency_symbol') }}{{ $order->grand_total }} </span><br>
								Payment Status: <span class="b">@if ($order->payment_status == 1) <span class="text-success">Completed</span> @else <span class="text-danger">Not Complete</span> @endif </span><br>
								Order Status: <span class="b">@if ($order->status == 'completed') <span class="text-success">{{ ucfirst($order->status) }}</span> @else <span class="primary-style">{{ ucfirst($order->status) }}</span> @endif </span><br>
								</p>
							</div>
							<div class="clearfix"></div>
							@if ($order->notes != '')
							<p class="col-md-12 hr"><span class="b">Note:</span> {{ $order->notes }}</p>
							@endif
						</div> <!-- row.// -->
					</div> <!-- card-body .// -->
					<div class="table-responsive">
						<table class="table table-hover">
							<tbody>
								@foreach ($order->items as $item)
								
								<tr>
									<td width="65">
										@if ($item->product->images->count() > 0)
										<img src="{{ asset('storage/'.$item->product->images->first()->full) }}" class="img-xs border">
										@else
										<img src="https://via.placeholder.com/176" class="img-xs border">
										@endif
									</td>
									<td> 
										<p class="title mb-0"><span class="b">{{ Str::words($item->product->name,20) }} </span></p>
										<var class="price text-muted">{{ config('settings.currency_symbol') }} {{ round(($item->price/$item->quantity), 2) }}</var>
										
									</td>
									<td class="text-center"> Quantity <br> {{ $item->quantity }} </td>
									<td width="250"> <a href="#" class="btn btn-outline-primary">Track order</a> 
										<div class="dropdown d-inline-block">
											<a href="#" data-toggle="dropdown" class="dropdown-toggle btn btn-outline-secondary">More</a>
											<div class="dropdown-menu dropdown-menu-right">
												<a href="#" class="dropdown-item">Return</a>
												<a href="#"  class="dropdown-item">Cancel order</a>
											</div>
										</div> <!-- dropdown.// -->
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div> <!-- table-responsive .end// -->
				</article> <!-- card order-item .// -->
			</div>

			@empty
			<div class="row">
				<p class="col-md-12 alert alert-warning mb-4">No orders to display.</p>
			
				<a href="#" class="btn btn-light mr-3"> <i class="fa fa-shopping-cart"></i> Got to cart </a>

				<a href="#" class="btn btn-light "> <i class="fas fa-cart-plus"></i> Start to shopping </a>
			</div>
			@endforelse
		

            </main> <!-- col.// -->
            
        
        </div>

    </div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->
@endsection

@push('styles')
<link href="{{ asset('frontend/css/print.css') }}" rel="stylesheet" type="text/css" media="print" />
@endpush

@push('scripts')
<script src="{{ asset('frontend/js/jQuery.print.js') }}" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(function($) { 'use strict';
		
		$("button.hidden-print").click(function(e){
			var parentTag = $(this).parent().parent().parent().attr('id');
			let iddiv = "#".concat(parentTag);

			//Print ele2 with default options
			$.print(iddiv);
		});
	});
	
</script>
@endpush