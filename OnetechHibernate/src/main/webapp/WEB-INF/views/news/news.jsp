<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	<div class="blog">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="blog_posts d-flex flex-row align-items-start justify-content-between">
					
							<c:forEach var="news" items="${allnew}">
							
						<!-- Blog post -->					
						<div class="blog_post">
						<div class="blog_image" style="background-image:url(${news.getImage()})"></div>
							<div class="blog_text">${news.getTitle()} </div>
							<div class="blog_button"><a href="${pageContext.request.contextPath}/news/${news.getId()}">Xem thêm</a></div>
						</div>	
						</c:forEach>				
					</div>
				</div>
					
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">
						<div class="newsletter_title_container">
							<div class="newsletter_icon"><img src="images/send.png" alt=""></div>
							<div class="newsletter_title">Đăng kí để nhận nhiều tin tức mới</div>
							<div class="newsletter_text"><p>...và nhận khuyên mãi 20% cho lần đầu mua sắm tại shop</p></div>
						</div>
						<div class="newsletter_content clearfix">
							<form action="#" class="newsletter_form">
								<input type="email" class="newsletter_input" required="required" placeholder="Enter your email address">
								<button class="newsletter_button">Theo dõi</button>
							</form>
							<div class="newsletter_unsubscribe_link"><a href="#">Bỏ theo dỏi</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
