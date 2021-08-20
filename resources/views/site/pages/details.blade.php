@extends('site.app')
@section('title', $product->name)

@section('content')
<section class="py-3 bg-light">
  <div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item"><a href="#">Category name</a></li>
			<li class="breadcrumb-item"><a href="#">Sub category</a></li>
			<li class="breadcrumb-item active" aria-current="page">{{ $product->name }}</li>
		</ol>
  </div>
</section>

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content bg-white padding-y">
	<div class="container">

	<!-- ============================ ITEM DETAIL ======================== -->
		<div class="row">
			<aside class="col-md-6">
				<div class="card">
					<article class="gallery-wrap"> 
						<div class="img-big-wrap">
							@if ($product->images->count() > 0)
								<div> <a href="{{ asset('storage/'.$product->images->first()->full) }}"><img src="{{ asset('storage/'.$product->images->first()->full) }}"></a></div>
							@else
								<div> <a href="#"><img src="https://via.placeholder.com/176"></a></div>
							@endif
						</div> <!-- slider-product.// -->
						@if ($product->images->count() > 0)
							<div class="thumbs-wrap">
							@foreach($product->images as $image)
								<a href="#" class="item-thumb"> <img src="{{ asset('storage/'.$image->full) }}"></a>
							@endforeach
							</div> <!-- slider-nav.// -->
						@endif
					</article> <!-- gallery-wrap .end// -->
				</div> <!-- card.// -->
			</aside>

			<main class="col-md-6">
				<article class="product-info-aside">

					<h2 class="title mt-3">{{ $product->name }} </h2>

					<div class="rating-wrap my-3">
						<ul class="rating-stars">
							<li style="width:80%" class="stars-active"> 
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
								<i class="fa fa-star"></i> 
							</li>
							<li>
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
								<i class="fa fa-star"></i> 
							</li>
						</ul>
						<small class="label-rating text-muted">132 reviews</small>
						<small class="label-rating text-success"> <i class="fa fa-clipboard-check"></i> 154 orders </small>
					</div> <!-- rating-wrap.// -->

					<div class="mb-3"> 
						@if ($product->sale_price > 0)
						<span class="currency">{{ config('settings.currency_symbol') }}</span><var class="price h4"  id="productPrice">{{ $product->sale_price }}</var> 
						<span class="text-muted">{{ config('settings.currency_symbol') }} {{ $product->price }}</span>
						@else
						<span class="currency">{{ config('settings.currency_symbol') }}</span><var class="price h4"  id="productPrice">{{ $product->price }}</var> 
						@endif
					</div> <!-- price-detail-wrap .// -->

					<p>Compact sport shoe for running, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat </p>


					<dl class="row">
					<dt class="col-sm-3">Manufacturer</dt>
					<dd class="col-sm-9"><a href="#">Great textile Ltd.</a></dd>

					<dt class="col-sm-3">Article number</dt>
					<dd class="col-sm-9">596 065</dd>

					<dt class="col-sm-3">Guarantee</dt>
					<dd class="col-sm-9">2 year</dd>

					<dt class="col-sm-3">Delivery time</dt>
					<dd class="col-sm-9">3-4 days</dd>

					<dt class="col-sm-3">Availabilty</dt>
					<dd class="col-sm-9">in Stock</dd>
					</dl>

					
						
					<hr>
					<form action="{{ route('product.add.cart') }}" method="POST" role="form" id="addToCart">
						@csrf

						<div class="form-row mt-3">
							<dl class="dlist-inline">
								@foreach($attributes as $attribute)
									@php $attributeCheck = in_array($attribute->id, $product->attributes->pluck('attribute_id')->toArray()) @endphp
									@if ($attributeCheck)
										<dt>{{ $attribute->name }}: </dt>
										<dd>
											<select class="form-control form-control-sm option" style="width:180px;" name="{{ strtolower($attribute->name ) }}">
												<option data-price="0" value="0"> Select a {{ $attribute->name }}</option>
												@foreach($product->attributes as $attributeValue)
													@if ($attributeValue->attribute_id == $attribute->id)
														<option
															data-price="{{ $attributeValue->price }}"
															value="{{ $attributeValue->value }}"> {{ ucwords($attributeValue->value . ' +'. $attributeValue->price) }}
														</option>
													@endif
												@endforeach
											</select>
										</dd>
									@endif
								@endforeach
							</dl>
						</div>
						<div class="form-row mt-3">
							<div class="col-sm-12">
								<dl class="dlist-inline">
									<dt>Quantity: </dt>
									<dd>
										<input class="form-control" type="number" min="1" value="1" max="{{ $product->quantity }}" name="qty" style="width:70px;">
										<input type="hidden" name="productId" value="{{ $product->id }}">
										<input type="hidden" name="price" id="finalPrice" value="{{ $product->sale_price != '' ? $product->sale_price : $product->price }}">
									</dd>
								</dl>
							</div>
						</div>

						<div class="form-row mt-3">
							<button type="submit" class="btn  btn-primary"> 
								<i class="fas fa-shopping-cart"></i> <span class="text">Add to cart</span> 
							</button>
							<!--
							<div class="form-group col-md flex-grow-0">
								<div class="input-group mb-3 input-spinner">
								<div class="input-group-prepend">
									<button class="btn btn-light" type="button" id="button-plus"> + </button>
								</div>
								<input type="text" class="form-control" value="1">
								<div class="input-group-append">
									<button class="btn btn-light" type="button" id="button-minus"> &minus; </button>
								</div>
								</div>
							</div> 
							<div class="form-group col-md">
								<button type="submit" class="btn  btn-primary"> 
									<i class="fas fa-shopping-cart"></i> <span class="text">Add to cart</span> 
								</button>
								
								<a href="#" class="btn btn-light">
									<i class="fas fa-envelope"></i> <span class="text">Contact supplier</span> 
								</a>
								
							</div> --> <!-- col.// -->
						</div> <!-- row.// -->
					</form> <!-- form.// -->

				</article> <!-- product-info-aside .// -->
			</main> <!-- col.// -->
		</div> <!-- row.// -->

		<!-- ================ ITEM DETAIL END .// ================= -->


	</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= SECTION  ========================= -->
<section class="section-name padding-y bg">
<div class="container">

<div class="row">
	<div class="col-md-8">
		<ul class="nav nav-tabs">
			<li class="nav-item">
				<a class="nav-link active" data-toggle="tab" href="#description">Description</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#specifications">Specifications</a>
			</li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content card card-body">
			<div class="tab-pane container active" id="description">
				<h5 class="title-description">Description</h5>
				<p>
					Lava stone grill, suitable for natural gas, with cast-iron cooking grid, piezo ignition, stainless steel burners, water tank, and thermocouple. Thermostatic adjustable per zone. Comes complete with lava rocks. Adjustable legs. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. 
				</p>
				<ul class="list-check">
					<li>Material: Stainless steel</li>
					<li>Weight: 82kg</li>
					<li>built-in drip tray</li>
					<li>Open base for pots and pans</li>
					<li>On request available in propane execution</li>
				</ul>
			</div>
			<div class="tab-pane container fade" id="specifications">
				
				<h5 class="title-description">Specifications</h5>
				<table class="table table-bordered">
					<tr> <th colspan="2">Basic specs</th> </tr>
					<tr> <td>Type of energy</td><td>Lava stone</td> </tr>
					<tr> <td>Number of zones</td><td>2</td> </tr>
					<tr> <td>Automatic connection	</td> <td> <i class="fa fa-check text-success"></i> Yes </td></tr>

					<tr> <th colspan="2">Dimensions</th> </tr>
					<tr> <td>Width</td><td>500mm</td> </tr>
					<tr> <td>Depth</td><td>400mm</td> </tr>
					<tr> <td>Height	</td><td>700mm</td> </tr>

					<tr> <th colspan="2">Materials</th> </tr>
					<tr> <td>Exterior</td><td>Stainless steel</td> </tr>
					<tr> <td>Interior</td><td>Iron</td> </tr>

					<tr> <th colspan="2">Connections</th> </tr>
					<tr> <td>Heating Type</td><td>Gas</td> </tr>
					<tr> <td>Connected load gas</td><td>15 Kw</td> </tr>

				</table>

			</div>
		</div>

	</div> <!-- col.// -->
	
	<aside class="col-md-4">

		<div class="box">
		
		<h5 class="title-description">Files</h5>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</p>

    <h5 class="title-description">Videos</h5>
      

    <article class="media mb-3">
      <a href="#"><img class="img-sm mr-3" src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/posts/3.jpg"></a>
      <div class="media-body">
        <h6 class="mt-0"><a href="#">How to use this item</a></h6>
        <p class="mb-2"> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin </p>
      </div>
    </article>

    <article class="media mb-3">
      <a href="#"><img class="img-sm mr-3" src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/posts/2.jpg"></a>
      <div class="media-body">
        <h6 class="mt-0"><a href="#">New tips and tricks</a></h6>
        <p class="mb-2"> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin </p>
      </div>
    </article>

    <article class="media mb-3">
      <a href="#"><img class="img-sm mr-3" src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/posts/1.jpg"></a>
      <div class="media-body">
        <h6 class="mt-0"><a href="#">New tips and tricks</a></h6>
        <p class="mb-2"> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin </p>
      </div>
    </article>


		
	</div> <!-- box.// -->
	</aside> <!-- col.// -->
</div> <!-- row.// -->

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



<!-- ========================= SECTION SUBSCRIBE  ========================= -->
<section class="padding-y-lg bg-light border-top">
<div class="container">

<p class="pb-2 text-center">Delivering the latest product trends and industry news straight to your inbox</p>

<div class="row justify-content-md-center">
  <div class="col-lg-4 col-sm-6">
<form class="form-row">
    <div class="col-8">
    <input class="form-control" placeholder="Your Email" type="email">
    </div> <!-- col.// -->
    <div class="col-4">
    <button type="submit" class="btn btn-block btn-warning"> <i class="fa fa-envelope"></i> Subscribe </button>
    </div> <!-- col.// -->
</form>
<small class="form-text">We’ll never share your email address with a third-party. </small>
  </div> <!-- col-md-6.// -->
</div>
  

</div>
</section>
@stop

@push('scripts')
    <script>
        $(document).ready(function () {
            $('#addToCart').submit(function (e) {
				var elements = document.getElementsByClassName('option');
				
				for (value of elements) {
				　	if ($(value).val() == 0) {
						e.preventDefault();
						alert('Please select an option');
						break;
					}
				}

            });
			
            $('.option').change(function () {
				let productPrice = document.getElementById('productPrice');

				let extraPrice = $(this).find(':selected').data('price');
                let price = parseFloat(productPrice.innerHTML);
				
                let finalPrice = (Number(extraPrice) + price).toFixed(2);
                $('#finalPrice').val(finalPrice);
                $(productPrice).html(finalPrice);
            });
        });
    </script>
@endpush