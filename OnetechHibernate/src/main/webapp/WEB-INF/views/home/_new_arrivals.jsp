<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	<div class="new_arrivals">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="tabbed_container">
						<div class="tabs clearfix tabs-right">
							<div class="new_arrivals_title">Hàng mới nhất</div>
							<ul class="clearfix">
								<li class="active">Nổi bật</li>
								<li>Âm thanh và Video</li>
								<li>Máy tính xách tay và máy tính</li>
							</ul>
							<div class="tabs_line"><span></span></div>
						</div>
						<div class="row">
							<div class="col-lg-9" style="z-index:1;">

								<!-- Product Panel -->
								<div class="product_panel panel active">
									<div class="arrivals_slider slider">
										<c:forEach var="product" items="${newarrivals}">
										<!-- Slider Item -->
										<div class="arrivals_slider_item">
											<div class="border_active"></div>
											<div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
												<div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="${pageContext.request.contextPath}/resources/${product.getImage() }" alt=""></div>
												<div class="product_content">
													<div class="product_price"><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></div>
													<div class="product_name"><div><a href="product/${product.getId()}">${product.getTitle() }</a></div></div>
													<div class="product_extras">
														<div class="product_color">
															<input type="radio" checked name="product_color" style="background:#b19c83">
															<input type="radio" name="product_color" style="background:#000000">
															<input type="radio" name="product_color" style="background:#999999">
														</div>
														<button class="product_cart_button">Thêm vào giỏ hàng</button>
													</div>
												</div>
												<div class="product_fav"><i class="fas fa-heart"></i></div>
												<ul class="product_marks">
													<li class="product_mark product_discount">${product.getDiscount() }</li>
													<li class="product_mark product_new">Mới</li>
												</ul>
											</div>
										</div>
										</c:forEach>
								</div>
									<div class="arrivals_slider_dots_cover"></div>
								</div>

								<!-- Product Panel -->
								<div class="product_panel panel">
									<div class="arrivals_slider slider">
										<c:forEach var="product" items="${newarrivals}">
										<!-- Slider Item -->
										<div class="arrivals_slider_item">
											<div class="border_active"></div>
											<div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
												<div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="resources/${product.getImage() }" alt=""></div>
												<div class="product_content">
													<div class="product_price"><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></div>
													<div class="product_name"><div><a href="product/${product.getId()}">${product.getTitle() }</a></div></div>
													<div class="product_extras">
														<div class="product_color">
															<input type="radio" checked name="product_color" style="background:#b19c83">
															<input type="radio" name="product_color" style="background:#000000">
															<input type="radio" name="product_color" style="background:#999999">
														</div>
														<button class="product_cart_button">Thêm vào giỏ hàng</button>
													</div>
												</div>
												<div class="product_fav"><i class="fas fa-heart"></i></div>
												<ul class="product_marks">
													<li class="product_mark product_discount">-25%</li>
													<li class="product_mark product_new">Mới</li>
												</ul>
											</div>
										</div>
										</c:forEach>
										</div>
									<div class="arrivals_slider_dots_cover"></div>
								</div>


								<!-- Product Panel -->
								<div class="product_panel panel">
									<div class="arrivals_slider slider">
								<c:forEach var="product" items="${newarrivals}">
										<!-- Slider Item -->
										<div class="arrivals_slider_item">
											<div class="border_active"></div>
											<div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
												<div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="resources/${product.getImage() }" alt=""></div>
												<div class="product_content">
													<div class="product_price"><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></div>
													<div class="product_name"><div><a href="product/${product.getId()}">${product.getTitle() }</a></div></div>
													<div class="product_extras">
														<div class="product_color">
															<input type="radio" checked name="product_color" style="background:#b19c83">
															<input type="radio" name="product_color" style="background:#000000">
															<input type="radio" name="product_color" style="background:#999999">
														</div>
														<button class="product_cart_button">Thêm vào giỏ hàng</button>
													</div>
												</div>
												<div class="product_fav"><i class="fas fa-heart"></i></div>
												<ul class="product_marks">
													<li class="product_mark product_discount">-25%</li>
													<li class="product_mark product_new">Mới</li>
												</ul>
											</div>
										</div>
								</c:forEach>
								</div>
									<div class="arrivals_slider_dots_cover"></div>
								</div>

							</div>
							<div class="col-lg-3">
							<c:forEach var="product" items="${newarrivalscover}">
								<div class="arrivals_single clearfix">
									<div class="d-flex flex-column align-items-center justify-content-center">
										<div class="arrivals_single_image"><img src="resources/${product.getImage() }" alt=""></div>
										<div class="arrivals_single_content">
											<div class="arrivals_single_category"><a href="#">Điện thoại thông minh</a></div>
											<div class="arrivals_single_name_container clearfix">
												<div class="arrivals_single_name"><a href="#">${product.getTitle() }</a></div>
												<div class="arrivals_single_price text-right"><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></div>
											</div>
											<div class="rating_r rating_r_4 arrivals_single_rating"><i></i><i></i><i></i><i></i><i></i></div>
											<form action="#"><button class="arrivals_single_button">Thêm vào giỏ hàng</button></form>
										</div>
										<div class="arrivals_single_fav product_fav active"><i class="fas fa-heart"></i></div>
										<ul class="arrivals_single_marks product_marks">
											<li class="arrivals_single_mark product_mark product_new">Mới</li>
										</ul>
									</div>
								</div>
								</c:forEach>
							</div>
					
						</div>
								
					</div>
				</div>
			</div>
		</div>		
	</div>
