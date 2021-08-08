<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	<div class="adverts">
		<div class="container">
			<div class="row">
				<c:forEach var="product" items= "${adv}">
				<div class="col-lg-4 advert_col">
					
					<!-- Advert Item -->

					<div class="advert d-flex flex-row align-items-center justify-content-start">
						<div class="advert_content">
							<div class="advert_title"><a href="#">Xu hướng 2018</a></div>
							<div class="advert_text">Những mặt hàng giữ được độ bền vững</div>
						</div>
						<div class="ml-auto"><div class="advert_image"><img src="${pageContext.request.contextPath}/resources/${product.getImage() }" alt=""></div></div>
					</div>
				</div>
					</c:forEach>
			</div>
		</div>
	</div>
