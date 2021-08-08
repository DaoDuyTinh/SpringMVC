<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">
						<div class="newsletter_title_container">
							<div class="newsletter_icon"><img src="${pageContext.request.contextPath}/resources/images/send.png" alt=""></div>
							<div class="newsletter_title">Đăng kí nhận bản tin</div>
							<div class="newsletter_text"><p>...và nhận phiếu giảm giá 20% cho lần mua sắm đầu tiên</p></div>
						</div>
						<div class="newsletter_content clearfix">
							<form action="#" class="newsletter_form">
								<input type="email" class="newsletter_input" required="required" placeholder="Nhập địa chỉ email của bạn">
								<button class="newsletter_button">Theo dõi</button>
							</form>
							<div class="newsletter_unsubscribe_link"><a href="#">Bỏ theo dõi</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
