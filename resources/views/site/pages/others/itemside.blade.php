<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>@yield('title') - {{ $settings["site_name"] }}</title>
    @include('site.partials.styles')
</head>
<body>
    
<header class="section-header">
<section class="header-main border-bottom">
<div class="container">
	<a href="http://bootstrap-ecommerce.com" class="brand-wrap"><img class="logo" src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/logo.png"></a>
</div> <!-- container.// -->
</section>
</header> <!-- section-header.// -->

<section class="section-content padding-y bg">
<div class="container">


<div class="row">
	<aside class="col-md-3">
<!-- ============================ COMPONENT 1 ================================= -->
<div class="box">
<!-- itemside // -->

<div class="itemside mb-3">
	<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/1.jpg" class="img-xs"></div>
	<div class="info">
		<p>Great product name <br> and second line </p>
	</div>
</div><!-- itemside // -->

<div class="itemside mb-3">
	<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/2.jpg" class="img-xs"></div>
	<div class="info">
		<p>Another name of item <br> second line text </p>	
	</div>
</div><!-- itemside // -->

<div class="itemside">
	<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/3.jpg" class="img-xs"></div>
	<div class="info">
		<p>Some name of item  goes here  </p> 
	</div>
</div><!-- itemside // -->


</div> <!-- box.// -->
<!-- ============================ COMPONENT 1 END .// ================================= -->
	</aside>
		<aside class="col-md-3">
<!-- ============================ COMPONENT 1 ================================= -->
<div class="box">
<!-- itemside // -->

<div class="itemside mb-3">
	<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/4.jpg" class="img-xs"></div>
	<div class="info">
		<p>Great product name <br> and second line </p>
	</div>
</div><!-- itemside // -->

<div class="itemside mb-3">
	<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/5.jpg" class="img-xs"></div>
	<div class="info">
		<p>Another name of item <br> second line text </p>	
	</div>
</div><!-- itemside // -->

<div class="itemside">
	<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/6.jpg" class="img-xs"></div>
	<div class="info">
		<p>Some name of item goes here</p> 
	</div>
</div><!-- itemside // -->


</div> <!-- box.// -->
<!-- ============================ COMPONENT 1 END .// ================================= -->
	</aside>
	<aside class="col-md-3">
<!-- ============================ COMPONENT 1 ================================= -->
<div class="box">
<!-- itemside // -->

<div class="itemside  mb-3">
	<div class="aside">
		<i class="icon-xs bg-secondary rounded-circle fa fa-check white"></i>
	</div>
	<div class="info">
		<small class="text-muted">Some heading</small>
		<p>Just any text here</p>
	</div>
</div><!-- itemside // -->

<div class="itemside mb-3">
	<div class="aside">
		<i class="icon-xs bg-success rounded-circle fa fa-user white"></i>
	</div>
	<div class="info">
		<small class="text-muted">Some heading</small>
		<p>Just any text here</p>
	</div>
</div><!-- itemside // -->

<div class="itemside">
	<div class="aside">
		<i class="icon-xs bg-danger rounded-circle fa fa-file white"></i>
	</div>
	<div class="info">
		<small class="text-muted">Some heading</small>
		<p>Just any text here</p>
	</div>
</div><!-- itemside // -->
</div> <!-- box.// -->
<!-- ============================ COMPONENT 1 END .// ================================= -->
	</aside>
	<aside class="col-md-3">
<!-- ============================ COMPONENT 1 ================================= -->
<div class="box">
<!-- itemside // -->

<div class="itemside  mb-3">
	<div class="aside">
		<img class="icon-xs rounded-circle border" src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/avatars/avatar3.jpg">
	</div>
	<div class="info">
		<p class="font-weight-bold text-dark">Tomas Jackson</p>
		<small>SEO of company</small>
	</div>
</div><!-- itemside // -->

<div class="itemside mb-3">
	<div class="aside">
		<img class="icon-xs rounded-circle border" src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/avatars/avatar2.jpg">
	</div>
	<div class="info">
		<p class="font-weight-bold text-dark">Jackie Paul</p>
		<small>Product manager</small>
	</div>
</div><!-- itemside // -->

<div class="itemside">
	<div class="aside">
		<img class="icon-xs rounded-circle border" src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/avatars/avatar1.jpg">
	</div>
	<div class="info">
		<p class="font-weight-bold text-dark">Justin Walter</p>
		<small>Designer at  company</small>
	</div>
</div><!-- itemside // -->
</div> <!-- box.// -->
<!-- ============================ COMPONENT 1 END .// ================================= -->
	</aside>

</div> <!-- row.// -->


<br>
<br>

<div class="card card-body">
	<div class="row">
		<div class="col-md-3">
			<figure class="itemside mb-2">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/1.jpg" class="border img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Camera Nikon D3100 Kit</a>
					<strong class="price">$241.99</strong>
				</figcaption>
			</figure>
		</div> <!-- col.// -->

		<div class="col-md-3">
			<figure class="itemside mb-2">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/2.jpg" class="border img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Camera Pentax K-70 Body</a>
					<strong class="price">$241.99</strong>
				</figcaption>
			</figure>
		</div> <!-- col.// -->

		<div class="col-md-3">
			<figure class="itemside mb-2">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/3.jpg" class="border img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Camera Canon EOS M50 Kit</a>
					<strong class="price">$241.99</strong>
				</figcaption>
			</figure>
		</div> <!-- col.// -->

		<div class="col-md-3">
			<figure class="itemside mb-2">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/4.jpg" class="border img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Some name of item goes here nice</a>
					<strong class="price">$241.99</strong>
				</figcaption>
			</figure>
		</div> <!-- col.// -->
	</div> <!-- row.// -->
</div> <!-- card.// -->

<br><br>

<div class="card card-body">
	<div class="row">
		<div class="col-md-3">
			<figure class="itemside mb-4">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/1.jpg" class="img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Apple AirPods 2 Charging Case</a>
					<a href="#" class="btn btn-outline-primary btn-sm"> Add to cart 
						<i class="fa fa-shopping-cart"></i> 
					</a>
				</figcaption>
			</figure>
		</div> <!-- col.// -->

		<div class="col-md-3">
			<figure class="itemside mb-4">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/2.jpg" class="img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Some name of item goes here nice</a>
					<a href="#" class="btn btn-outline-primary btn-sm"> Add to cart 
						<i class="fa fa-shopping-cart"></i> 
					</a>
				</figcaption>
			</figure>
		</div> <!-- col.// -->

		<div class="col-md-3">
			<figure class="itemside mb-4">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/3.jpg" class="img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Another name of item goes here nice</a>
					<a href="#" class="btn btn-outline-primary btn-sm"> Add to cart 
						<i class="fa fa-shopping-cart"></i> 
					</a>
				</figcaption>
			</figure>
		</div> <!-- col.// -->

		<div class="col-md-3">
			<figure class="itemside mb-4">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/4.jpg" class="img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Great name of item goes here nice</a>
					<a href="#" class="btn btn-outline-primary btn-sm"> Add to cart 
						<i class="fa fa-shopping-cart"></i> 
					</a>
				</figcaption>
			</figure>
		</div> <!-- col.// -->
		<div class="col-md-3">
			<figure class="itemside mb-4">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/5.jpg" class="img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Product name goes here as demo text</a>
					<a href="#" class="btn btn-outline-primary btn-sm"> Add to cart 
						<i class="fa fa-shopping-cart"></i> 
					</a>
				</figcaption>
			</figure>
		</div> <!-- col.// -->

		<div class="col-md-3">
			<figure class="itemside mb-4">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/6.jpg" class="img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Some name of item goes here nice</a>
					<a href="#" class="btn btn-outline-primary btn-sm"> Add to cart 
						<i class="fa fa-shopping-cart"></i> 
					</a>
				</figcaption>
			</figure>
		</div> <!-- col.// -->

		<div class="col-md-3">
			<figure class="itemside mb-4">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/7.jpg" class="img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Some name of item goes here nice</a>
					<a href="#" class="btn btn-outline-primary btn-sm"> Add to cart 
						<i class="fa fa-shopping-cart"></i> 
					</a>
				</figcaption>
			</figure>
		</div> <!-- col.// -->

		<div class="col-md-3">
			<figure class="itemside mb-4">
				<div class="aside"><img src="https://bootstrap-ecommerce.com/templates/alistyle-html/images/items/1.jpg" class="img-sm"></div>
				<figcaption class="info align-self-center">
					<a href="#" class="title">Some name of item goes here nice</a>
					<a href="#" class="btn btn-outline-primary btn-sm"> Add to cart 
						<i class="fa fa-shopping-cart"></i> 
					</a>
				</figcaption>
			</figure>
		</div> <!-- col.// -->
	</div> <!-- row.// -->
</div> <!-- card.// -->


</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= FOOTER ========================= -->
<footer class="section-footer border-top padding-y">
	<div class="container">
		
<a href="http://bootstrap-ecommerce.com">Bootstrap-ecommerce UI kit</a>

	</div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->

</body>
</html>
