<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>OneTech</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="OneTech shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/bootstrap4/bootstrap.min.css"/>">
<link href="<c:url value="/resources/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/animate.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/slick-1.8.0/slick.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/product_styles.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/product_responsive.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/styles.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/responsive.css"/>">

</head>

<body>
<fmt:setLocale value = "vi_VN"/>
<!-- Header -->
		<jsp:include page = "../_header.jsp"></jsp:include>
	<!-- Single Product -->

	<div class="single_product">
		<div class="container">
			<div class="row">

				<!-- Images -->
				<div class="col-lg-2 order-lg-1 order-2">
					<ul class="image_list">
						<li data-image="${pageContext.request.contextPath}/images/single_4.jpg"><img src="${pageContext.request.contextPath}/resources/${product.getImage() }" alt=""></li>
						<li data-image="${pageContext.request.contextPath}/images/single_2.jpg"><img src="${pageContext.request.contextPath}/resources/${product.getImage() }" alt=""></li>
						<li data-image="${pageContext.request.contextPath}/images/single_3.jpg"><img src="${pageContext.request.contextPath}/resources/${product.getImage() }" alt=""></li>
					</ul>
				</div>

				<!-- Selected Image -->
				<div class="col-lg-5 order-lg-2 order-1">
					<div class="image_selected"><img src="${pageContext.request.contextPath}/resources/${product.getImage() }" alt=""></div>
				</div>

				<!-- Description -->
				<div class="col-lg-5 order-3">
					<div class="product_description">
						<div class="product_category">Laptops</div>
						<div class="product_name">${product.getTitle() }</div>
						<div class="rating_r rating_r_4 product_rating"><i></i><i></i><i></i><i></i><i></i></div>
						<div class="product_text">${product.getDescription() }</div>
						<div class="order_info d-flex flex-row">
							<form action="#">
								<div class="clearfix" style="z-index: 1000;">

									<!-- Product Quantity -->
									<div class="product_quantity clearfix">
										<span>Quantity: </span>
										<input id="quantity_input" type="text" pattern="[0-10]*" value="1">
										<div class="quantity_buttons">
											<div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fas fa-chevron-up"></i></div>
											<div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fas fa-chevron-down"></i></div>
										</div>
									</div>

									<!-- Product Color -->
									<ul class="product_color">
										<li>
											<span>Color: </span>
											<div class="color_mark_container"><div id="selected_color" class="color_mark"></div></div>
											<div class="color_dropdown_button"><i class="fas fa-chevron-down"></i></div>

											<ul class="color_list">
												<li><div class="color_mark" style="background: #999999;"></div></li>
												<li><div class="color_mark" style="background: #b19c83;"></div></li>
												<li><div class="color_mark" style="background: #000000;"></div></li>
											</ul>
										</li>
									</ul>

								</div>

								<div class="product_price"><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></div>
								<div class="button_container">
									<button type="button" class="button cart_button add-cart" data-id="${product.getId() }">Thêm vào giỏ hàng</button>
									<div class="product_fav"><i class="fas fa-heart"></i></div>
								</div>
								
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


	<!-- Recently Viewed -->
		<jsp:include page = "near_product.jsp"></jsp:include>

	<!-- Brands -->
		<jsp:include page = "../home/_brands.jsp"></jsp:include>

	<!-- Newsletter -->
		<jsp:include page = "../home/_newsletter.jsp"></jsp:include>

	<!-- Footer -->
	<jsp:include page = "../_footer.jsp"></jsp:include>

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/styles/bootstrap4/popper.js"/>"></script>
<script src="<c:url value="/resources/styles/bootstrap4/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/TweenMax.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/TimelineMax.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/scrollmagic/ScrollMagic.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/animation.gsap.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/ScrollToPlugin.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"/>"></script>
<script src="<c:url value="/resources/plugins/slick-1.8.0/slick.js"/>"></script>
<script src="<c:url value="/resources/plugins/easing/easing.js"/>"></script>
<script src="<c:url value="/resources/js/product_custom.js"/>"></script>
<script src="<c:url value="/resources/js/custom.js"/>"></script>
<script>
	$(".add-cart").on("click",function(){
		var id = $(this).data("id");
		var quanty = $("#quantity_input").val();
		window.location = "${pageContext.request.contextPath}/addcartmul/"+id+"/"+quanty;	
	});
</script>
</body>

</html>