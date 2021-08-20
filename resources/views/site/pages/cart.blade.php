@extends('site.app')
@section('title', 'Shopping Cart')
@section('content')
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<main class="col-md-9">
        @if (Session::has('message'))
            <p class="alert alert-success">{{ Session::get('message') }}</p>
        @endif
        @if (Session::has('error'))
            <p class="alert alert-danger">{{ Session::get('error') }}</p>
        @endif
        
        @if (\Cart::isEmpty())
            <p class="alert alert-warning">Your shopping cart is empty.</p>
        @else

        <div class="card">

            <table class="table table-borderless table-shopping-cart">
                <thead class="text-muted">
                    <tr class="small text-uppercase">
                        <th scope="col">Product</th>
                        <th scope="col" width="180">Quantity</th>
                        <th scope="col" width="120">Price</th>
                        <th scope="col" class="text-right" width="100"> </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach(\Cart::getContent() as $item)
                    <tr>
                        <td>
                            <figure class="itemside">
                                <div class="aside">
                                    
                                    @if ($item->image != '')
                                        <img src="{{ asset('storage/'.$item->image) }}" alt="" class="img-sm">
                                    
                                    @else
                                        <img src="https://via.placeholder.com/176" alt="" class="img-sm">
                                    @endif
                                </div>
                                <figcaption class="info">
                                    <a href="#" class="title text-dark">{{ Str::words($item->name,20) }}</a>
                                    @foreach($item->attributes as $key  => $value)
                                    <dl class="dlist-inline text-muted small">
                                        <dt>{{ ucwords($key) }}: </dt>
                                        <dd>{{ ucwords($value) }}</dd>
                                    </dl>
                                    @endforeach
                                </figcaption>
                            </figure>
                        </td>
                        <td>
                            <a href="{{ route('checkout.cart.minus', $item->id) }}" class="btn btn-light" > <i class="fas fa-minus"></i></a>
                            <strong>{{ $item->quantity }}</strong>
                            <a href="{{ route('checkout.cart.plus', $item->id) }}" class="btn btn-light" > <i class="fas fa-plus"></i></a>
                            
                        </td>
                        <td> 
                            <div class="price-wrap"> 
                                <var class="price">{{ config('settings.currency_symbol') }}{{ \Cart::get($item->id)->getPriceSum() }}</var> 
                                <small class="text-muted"> {{ config('settings.currency_symbol'). $item->price }} each </small> 
                            </div> <!-- price-wrap .// -->
                        </td>
                        <td class="text-right">
                            <!-- <a data-original-title="Update quantity" title="" href="" class="btn btn-light" data-toggle="tooltip"> <i class="fas fa-save"></i></a> -->
                            <a data-original-title="Remove item" title="" href="{{ route('checkout.cart.remove', $item->id) }}" class="btn btn-light" data-toggle="tooltip"> <i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>

            <div class="card-body border-top">
                <a href="{{ route('checkout.index') }}" class="btn btn-primary float-md-right"> Proceed To Checkout <i class="fa fa-chevron-right"></i> </a>
                <a href="#" class="btn btn-light"> <i class="fa fa-chevron-left"></i> Continue shopping </a>
            </div>	
        </div> <!-- card.// -->

        <div class="alert alert-success mt-3">
            <p class="icontext"><i class="icon text-success fa fa-truck"></i> Free Delivery within 1-2 weeks</p>
        </div>

    @endif
	</main> <!-- col.// -->
	<aside class="col-md-3">
		<div class="card mb-3">
			<div class="card-body">
			<form>
				<div class="form-group">
					<label>Have coupon?</label>
					<div class="input-group">
						<input type="text" class="form-control" name="" placeholder="Coupon code">
						<span class="input-group-append"> 
							<button class="btn btn-primary">Apply</button>
						</span>
					</div>
				</div>
			</form>
			</div> <!-- card-body.// -->
		</div>  <!-- card .// -->
		<div class="card mb-3">
			<div class="card-body">
					<dl class="dlist-align">
					  <dt>Total items:</dt>
					  <dd class="text-right">{{ \Cart::getTotalQuantity() }}</dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Total price:</dt>
					  <dd class="text-right">USD 568</dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Discount:</dt>
					  <dd class="text-right">USD 658</dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Total:</dt>
					  <dd class="text-right  h5"><strong>{{ config('settings.currency_symbol') }}{{ \Cart::getTotal() }}</strong></dd>
					</dl>
					<hr>
                    <figure class="itemside mb-3">
                        <aside class="aside"><img src="{{ asset('frontend/images/icons/pay-visa.png') }}"></aside>
                        <div class="text-wrap small text-muted">
                            Pay 84.78 AED ( Save 14.97 AED ) By using ADCB Cards
                        </div>
                    </figure>
                    <figure class="itemside mb-3">
                        <aside class="aside"> <img src="{{ asset('frontend/images/icons/pay-mastercard.png') }}"> </aside>
                        <div class="text-wrap small text-muted">
                            Pay by MasterCard and Save 40%.
                            <br> Lorem ipsum dolor
                        </div>
                    </figure>

			</div> <!-- card-body.// -->
		</div>  <!-- card .// -->
        <div class="">
            
        <a href="{{ route('checkout.cart.clear') }}" class="btn btn-danger btn-block mb-4">Clear Cart</a>
        </div>
	</aside> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= SECTION  ========================= -->
<section class="section-name border-top padding-y">
<div class="container">
<article class="card card-body">


<div class="row">
	<div class="col-md-4">	
		<figure>
			<span class="text-primary"><i class="fa fa-2x fa-truck"></i></span>
			<figcaption class="pt-3">
				<h5 class="title">Fast delivery</h5>
				<p>Dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore </p>
			</figcaption>
		</figure> <!-- iconbox // -->
	</div><!-- col // -->
	<div class="col-md-4">
		<figure>
			<span class="text-primary"><i class="fa fa-2x fa-landmark"></i></span>	
			<figcaption class="pt-3">
				<h5 class="title">Creative Strategy</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				 </p>
			</figcaption>
		</figure> <!-- iconbox // -->
	</div><!-- col // -->
    <div class="col-md-4">
		<figure>
			<span class="text-primary"><i class="fa fa-2x fa-lock"></i></span>
			<figcaption class="pt-3">
				<h5 class="title">High secured </h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				 </p>
			</figcaption>
		</figure> <!-- iconbox // -->
	</div> <!-- col // -->
</div>
</article> <!-- card.// -->
<!-- ============================ COMPONENT 3 END .// ================================= -->
</div><!-- container // -->
</section>
<!-- ========================= SECTION  END// ========================= -->

@stop