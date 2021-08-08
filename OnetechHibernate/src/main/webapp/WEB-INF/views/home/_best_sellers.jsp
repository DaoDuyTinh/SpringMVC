<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	<div class="best_sellers">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="tabbed_container">
						<div class="tabs clearfix tabs-right">
							<div class="new_arrivals_title">Bán chạy nhất</div>
							<ul class="clearfix">
								<li class="active">Top 20</li>
								<li>Âm thanh và Video</li>
								<li>Máy tính xách tay và Máy tính</li>
							</ul>
							<div class="tabs_line"><span></span></div>
						</div>

						<div class="bestsellers_panel panel active">

							<!-- Best Sellers Slider -->

							<div class="bestsellers_slider slider">
							<c:forEach var="product" items="${bestseller}">
								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image"><img src="${pageContext.request.contextPath}/resources/${product.getImage() }" alt=""></div>
										<div class="bestsellers_content">
											<div class="bestsellers_category"><a href="#">Tai nghe</a></div>
											<div class="bestsellers_name"><a href="product/${product.getId()}">${product.getTitle() }</a></div>
											<div class="rating_r rating_r_4 bestsellers_rating"><i></i><i></i><i></i><i></i><i></i></div>
											<div class="bestsellers_price discount"><fmt:formatNumber value = "${product.getPriceNet() }" type="number" maxIntegerDigits="14"/><span><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></span></div>
										</div>
									</div>
									<div class="bestsellers_fav active"><i class="fas fa-heart"></i></div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">${product.getDiscount() }%</li>
										<li class="bestsellers_mark bestsellers_new">Mới</li>
									</ul>
								</div>
							</c:forEach>
						</div>
						</div>

						<div class="bestsellers_panel panel">

							<!-- Best Sellers Slider -->

							<div class="bestsellers_slider slider">
								<c:forEach var="product" items="${bestseller}">
								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image"><img src="resources/${product.getImage() }" alt=""></div>
										<div class="bestsellers_content">
											<div class="bestsellers_category"><a href="#">Điện thoại</a></div>
											<div class="bestsellers_name"><a href="product/${product.getId()}">${product.getTitle() }</a></div>
											<div class="rating_r rating_r_4 bestsellers_rating"><i></i><i></i><i></i><i></i><i></i></div>
											<div class="bestsellers_price discount"><fmt:formatNumber value = "${product.getPriceNet() }" type="number" maxIntegerDigits="14"/><span><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></span></div>
										</div>
									</div>
									<div class="bestsellers_fav active"><i class="fas fa-heart"></i></div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">${product.getDiscount() }%</li>
										<li class="bestsellers_mark bestsellers_new">Mới</li>
									</ul>
								</div>
								</c:forEach>
							</div>
						</div>
						<div class="bestsellers_panel panel">

							<!-- Best Sellers Slider -->

							<div class="bestsellers_slider slider">
							<c:forEach var="product" items="${bestseller}">
								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image"><img src="resources/${product.getImage() }" alt=""></div>
										<div class="bestsellers_content">
											<div class="bestsellers_category"><a href="#">Điện thoại</a></div>
											<div class="bestsellers_name"><a href="product/${product.getId()}">${product.getTitle() }</a></div>
											<div class="rating_r rating_r_4 bestsellers_rating"><i></i><i></i><i></i><i></i><i></i></div>
											<div class="bestsellers_price discount"><fmt:formatNumber value = "${product.getPriceNet() }" type="number" maxIntegerDigits="14"/><span><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></span></div>
										</div>
									</div>
									<div class="bestsellers_fav active"><i class="fas fa-heart"></i></div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">${product.getDiscount() }%</li>
										<li class="bestsellers_mark bestsellers_new">Mới</li>
									</ul>
								</div>
							</c:forEach>	
							</div>
						</div>
					</div>
						
				</div>
			</div>
		</div>
	</div>
