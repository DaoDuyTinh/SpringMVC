<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<div class="deals_featured">
<fmt:setLocale value = "vi_VN"/>
		<div class="container">
			<div class="row">
				<div class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">
					
					<!-- Deals -->

					<div class="deals">
						<div class="deals_title">Khuyến mãi trong tuần</div>
						<div class="deals_slider_container">					
							<!-- Deals Slider -->
							<div class="owl-carousel owl-theme deals_slider">
								
								<!-- Deals Item -->
								<c:forEach var="product" items="${dealsOfWeek}">
								<div class="owl-item deals_item">
									<div class="deals_image"><img src="${pageContext.request.contextPath}/resources/${product.getImage() }" alt=""></div>
									<div class="deals_content">
										<div class="deals_info_line d-flex flex-row justify-content-start">
											<div class="deals_item_category"><a href="#">Headphones</a></div>
											<div class="deals_item_price_a ml-auto"><fmt:formatNumber value = "${product.getPriceNet() }" type="number" maxIntegerDigits="14"/></div>
										</div>
										<div class="deals_info_line d-flex flex-row justify-content-start">
											<div class="deals_item_name">${product.getTitle() }</div>
											<div class="deals_item_price ml-auto"><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></div>
										</div>
										<div class="available">
											<div class="available_line d-flex flex-row justify-content-start">
												<div class="available_title">Số lượng còn: <span>${product.getAvailable() }</span></div>
												<div class="sold_title ml-auto">Đã bán: <span>${product.getSold() }</span></div>
											</div>
											<div class="available_bar"><span style="width:17%"></span></div>
										</div>
										<div class="deals_timer d-flex flex-row align-items-center justify-content-start">
											<div class="deals_timer_title_container">
												<div class="deals_timer_title">Mua ngay</div>
												<div class="deals_timer_subtitle">Ưu đãi kết thúc sau:</div>
											</div>
											<div class="deals_timer_content ml-auto">
												<div class="deals_timer_box clearfix" data-target-time="">
													<div class="deals_timer_unit">
														<div id="deals_timer1_hr" class="deals_timer_hr"></div>
														<span>hours</span>
													</div>
													<div class="deals_timer_unit">
														<div id="deals_timer1_min" class="deals_timer_min"></div>
														<span>mins</span>
													</div>
													<div class="deals_timer_unit">
														<div id="deals_timer1_sec" class="deals_timer_sec"></div>
														<span>secs</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								</c:forEach>
							</div>

						</div>

						<div class="deals_slider_nav_container">
							<div class="deals_slider_prev deals_slider_nav"><i class="fas fa-chevron-left ml-auto"></i></div>
							<div class="deals_slider_next deals_slider_nav"><i class="fas fa-chevron-right ml-auto"></i></div>
						</div>
					</div>
					
					<!-- Featured -->
					<div class="featured">
						<div class="tabbed_container">
							<div class="tabs">
								<ul class="clearfix">
									<li class="active">Nổi bật</li>
									<li>Giảm giá</li>
									<li>Tốt nhất</li>
								</ul>
								<div class="tabs_line"><span></span></div>
							</div>

							<!-- Product Panel -->
							<div class="product_panel panel active">
								<div class="featured_slider slider">
									
									<c:forEach var="product" items="${featuresOfWeek}">
									<!-- Slider Item -->
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div class="product_item d-flex flex-column align-items-center justify-content-center text-center">
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
													<a href="addcart/${product.getId()}"><button class="product_cart_button">Thêm vào giỏ hàng</button></a>
												</div>
											</div>
											<div class="product_fav"><i class="fas fa-heart"></i></div>
											<ul class="product_marks">
												<li class="product_mark product_discount">${product.getDiscount() }%</li>
												<li class="product_mark product_new">Mới</li>
											</ul>
										</div>
									</div>
									</c:forEach>
								</div>
								<div class="featured_slider_dots_cover"></div>
							</div>

							<!-- Product Panel -->

							<div class="product_panel panel">
								<div class="featured_slider slider">
								<c:forEach var="product" items="${featuresOfWeek}">
									<!-- Slider Item -->
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="resources/${product.getImage() }" alt=""></div>
											<div class="product_content">
												<div class="product_price discount"><fmt:formatNumber value = "${product.getPriceNet() }" type="number" maxIntegerDigits="14"/><span><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></span></div>
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
												<li class="product_mark product_discount">${product.getDiscount() }%</li>
												<li class="product_mark product_new">Mới</li>
											</ul>
										</div>
									</div>
								</c:forEach>		
								</div>
								<div class="featured_slider_dots_cover"></div>
							</div>

							<!-- Product Panel -->

							<div class="product_panel panel">
								<div class="featured_slider slider">
							<c:forEach var="product" items="${featuresOfWeek}">
									<!-- Slider Item -->
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="resources/${product.getImage() }" alt=""></div>
											<div class="product_content">
												<div class="product_price discount"><fmt:formatNumber value = "${product.getPriceNet() }" type="number" maxIntegerDigits="14"/><span><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></span></div>
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
												<li class="product_mark product_discount">${product.getDiscount() }%</li>
												<li class="product_mark product_new">Mới</li>
											</ul>
										</div>
									</div>
							</c:forEach>
								</div>
								<div class="featured_slider_dots_cover"></div>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
