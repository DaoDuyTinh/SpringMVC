<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	<div class="reviews">
		<div class="container">
			<div class="row">
				<div class="col">
					
					<div class="reviews_title_container">
						<h3 class="reviews_title">Đánh giá mới nhất</h3>
						<div class="reviews_all ml-auto"><a href="#">Xem tất cả <span>đánh giá</span></a></div>
					</div>

					<div class="reviews_slider_container">
						
						<!-- Reviews Slider -->
						<div class="owl-carousel owl-theme reviews_slider">
							<c:forEach var="product" items= "${review}">
							<!-- Reviews Slider Item -->
							<div class="owl-item">
								<div class="review d-flex flex-row align-items-start justify-content-start">
									<div><div class="review_image"><img src="${pageContext.request.contextPath}/resources/${product.getImage() }" alt=""></div></div>
									<div class="review_content">
										<div class="review_name">${product.getTitle() }</div>
										<div class="review_rating_container">
											<div class="rating_r rating_r_4 review_rating"><i></i><i></i><i></i><i></i><i></i></div>
											<div class="review_time">2 ngày trước</div>
										</div>
										<div class="review_text"><p>Tốt chất lượng cao</p></div>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
						<div class="reviews_dots"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
