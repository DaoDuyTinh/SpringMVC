<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	<div class="banner">
		<div class="banner_background" style="background-image:url(resources/images/banner_background.jpg)"></div>
		<div class="container fill_height">
		<c:forEach var="banner" items="${bannertop}">
			<div class="row fill_height">
				<div class="banner_product_image"><img src="resources/images/banner_product.png" alt=""></div>
				<div class="col-lg-5 offset-lg-4 fill_height">
					<div class="banner_content">
						<h1 class="banner_text">${banner.getTitle() }</h1>
						<div class="banner_price"><span></span></div>
						<div class="banner_product_name">Apple Iphone 6s</div>
						<div class="button banner_button"><a href="#">Cửa hàng</a></div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
