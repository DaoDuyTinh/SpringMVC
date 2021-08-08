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
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/cart_styles.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/cart_responsive.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/styles.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/responsive.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/product_styles.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/product_responsive.css"/>">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>

<body>
<fmt:setLocale value = "vi_VN"/>
<!-- Header -->
		<jsp:include page = "../_header.jsp"></jsp:include>
	<!-- Single Product -->

	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="cart_container">
						<div class="cart_title">Giỏ hàng</div>
						<div class="cart_items">
							<ul class="cart_list">
							<c:forEach items="${Cart}" var="item" >
								<li class="cart_item clearfix">
									<div class="cart_item_image"><img src="${pageContext.request.contextPath}/resources/${item.value.products.image}" alt=""></div>
									<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
										<div class="cart_item_name cart_info_col">
											<div class="cart_item_title">Tên sản phẩm</div>
											<div class="cart_item_text">${item.value.products.title }</div>
										</div>
										<div class="cart_item_color cart_info_col">
											<div class="cart_item_title">Màu</div>
											<div class="cart_item_text"><span style="background-color:#999999;"></span>Silver</div>
										</div>
										<div class="cart_item_quantity cart_info_col">
												<div class="cart_item_title">Số lượng</div>
												<div class="cart_item_text"></div>
												<td class="cart_quantity">
												<input type="number"id="quanty-cart-${item.value.products.id }" name="quantity"
													min="1" max="100" step="1" value="${item.value.quantity }">
												</td>
											</div>
										<div class="cart_item_price cart_info_col">
											<div class="cart_item_title">Giá</div>
											<div class="cart_item_text"><fmt:formatNumber value = "${item.value.products.price}" type="number" maxIntegerDigits="14"/></div>
										</div>
										<div class="cart_item_total cart_info_col">
											<div class="cart_item_title">Tổng tiền</div>
											<div class="cart_item_text"><fmt:formatNumber value = "${item.value.products.price*item.value.quantity}" type="number" maxIntegerDigits="14"/></div>
										</div>
										<div class="cart_item_color cart_info_col">
										<div class="cart_item_title">Sửa</div>
											<button class="edit-cart" data-id="${item.value.products.id }"><i class="fas fa-upload"></i></button>
										</div>
										<div class="cart_item_color cart_info_col">
										<div class="cart_item_title">Xóa</div>
											<a href="deleteitemcart/${item.value.products.id}"><i class="fas fa-trash"></i></a>
										</div>
									</div>
								</li>
								</c:forEach>
							</ul>
						</div>
						
						<!-- Order Total -->
						<div class="order_total">
							<div class="order_total_content text-md-right">
								<div class="order_total_title">Order Total:</div>
								<div class="order_total_amount"><fmt:formatNumber value = "${TotalPriceCart}" type="number" maxIntegerDigits="14"/></div>
							</div>
						</div>

						<div class="cart_buttons">
							<a href="deletecart"><button type="button" class="button cart_button_clear">Xóa hết giỏ hàng</button></a>
							<button type="button" class="button cart_button_checkout">Thanh toán</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Recently Viewed -->
		<jsp:include page = "../home/_viewed.jsp"></jsp:include>

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
<script src="<c:url value="/resources/js/cart_custom.js"/>"></script>
<script src="<c:url value="/resources/js/custom.js"/>"></script>
<script src="<c:url value="/resources/js/product_custom.js"/>"></script>
<script>
	$(".edit-cart").on("click",function(){
		var id = $(this).data("id");
		var quanty = $("#quanty-cart-"+id).val();
		window.location = "editcart/"+id+"/"+quanty;	
	});

</script>
</body>

</html>
