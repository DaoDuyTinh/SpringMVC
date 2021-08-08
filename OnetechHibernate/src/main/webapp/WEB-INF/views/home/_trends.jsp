<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	<div class="trends">
		<div class="trends_background" style="background-image:url(resources/images/trends_background.jpg)"></div>
		<div class="trends_overlay"></div>
		<div class="container">
			<div class="row">

				<!-- Trends Content -->
				<div class="col-lg-3">
					<div class="trends_container">
						<h2 class="trends_title">Xu Hướng</h2>
						<div class="trends_text"><p>Nhưng công nghê mới của kỉ nguyên 4.0</p></div>
						<div class="trends_slider_nav">
							<div class="trends_prev trends_nav"><i class="fas fa-angle-left ml-auto"></i></div>
							<div class="trends_next trends_nav"><i class="fas fa-angle-right ml-auto"></i></div>
						</div>
					</div>
				</div>

				<!-- Trends Slider -->
				<div class="col-lg-9">
					<div class="trends_slider_container">

						<!-- Trends Slider -->

						<div class="owl-carousel owl-theme trends_slider">
							<c:forEach var="product" items= "${trend}">
							<!-- Trends Slider Item -->
							<div class="owl-item">
								<div class="trends_item is_new">
									<div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="${pageContext.request.contextPath}/resources/${product.getImage() }" alt=""></div>
									<div class="trends_content">
										<div class="trends_category"><a href="#">Xe điện tử</a></div>
										<div class="trends_info clearfix">
											<div class="trends_name"><a href="product/${product.getId()}">${product.getTitle() }</a></div>
											<div class="trends_price"><fmt:formatNumber value = "${product.getPrice() }" type="number" maxIntegerDigits="14"/></div>
										</div>
									</div>
									<ul class="trends_marks">
										<li class="trends_mark trends_discount">${product.getDiscount() }%</li>
										<li class="trends_mark trends_new">Mới</li>
									</ul>
									<div class="trends_fav"><i class="fas fa-heart"></i></div>
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
