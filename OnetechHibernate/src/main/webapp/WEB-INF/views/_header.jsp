	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	<header class="header">

		<!-- Top Bar -->

		<div class="top_bar">
		<fmt:setLocale value = "vi_VN"/>
			<div class="container">
				<div class="row">
					<div class="col d-flex flex-row">
						<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="${pageContext.request.contextPath}/resources/images/phone.png" alt=""></div>+84 37 220 1076</div>
						<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="${pageContext.request.contextPath}/resources/images/mail.png" alt=""></div><a href="mailto:fastsales@gmail.com">daoduytinh2016@gmail.com</a></div>
						<div class="top_bar_content ml-auto">
							<div class="top_bar_menu">
								<ul class="standard_dropdown top_bar_dropdown">
									<li>
										<a href="#">Anh<i class="fas fa-chevron-down"></i></a>
										<ul>
											<li><a href="#">Ý</a></li>
											<li><a href="#">TBN</a></li>
											<li><a href="#">Nhật Bản</a></li>
										</ul>
									</li>
									<li>
										<a href="#">$ Mỹ dollar<i class="fas fa-chevron-down"></i></a>
										<ul>
											<li><a href="#">EUR Euro</a></li>
											<li><a href="#">GBP Bảng</a></li>
											<li><a href="#">JPY Nhật Bản Yen</a></li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="top_bar_user">
								<div class="user_icon"><img src="${pageContext.request.contextPath}/resources/images/user.svg" alt=""></div>
									<c:if test="${empty sessionScope.LoginInfo}">
							<div><a href = "${pageContext.request.contextPath}/login">Đăng ký</a></div>
							</c:if>
							<c:if test="${not empty sessionScope.LoginInfo}">
								<div><a href = "${pageContext.request.contextPath}/logout">Đăng xuất</a></div>									
							</c:if>
								<c:if test="${empty sessionScope.LoginInfo}">
							<div><a href = "${pageContext.request.contextPath}/login">Đăng nhập</a></div>
							</c:if>
							<c:if test="${not empty sessionScope.LoginInfo}">
								<div><a href = "${pageContext.request.contextPath}/logout">${LoginInfo.name}</a></div>									
							</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>		
		</div>

		<!-- Header Main -->

		<div class="header_main">
			<div class="container">
				<div class="row">

					<!-- Logo -->
					<div class="col-lg-2 col-sm-3 col-3 order-1">
						<div class="logo_container">
							<div class="logo"><a href="${pageContext.request.contextPath}">OneTech</a></div>
						</div>
					</div>

					<!-- Search -->
					<div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
						<div class="header_search">
							<div class="header_search_content">
								<div class="header_search_form_container">
									<form action="#" class="header_search_form clearfix">
										<input type="search" required="required" class="header_search_input" placeholder="Tìm kiếm sản phẩm...">
										<div class="custom_dropdown">
											<div class="custom_dropdown_list">
												<span class="custom_dropdown_placeholder clc">Sản Phẩm</span>
												<i class="fas fa-chevron-down"></i>
												<ul class="custom_list clc">
													<c:forEach var="category" items= "${categories}">
													<li><a class="clc" href="#">${category.getTitle()}</a></li>
													</c:forEach>
												</ul>
											</div>
										</div>
										<button type="submit" class="header_search_button trans_300" value="Submit"><img src="${pageContext.request.contextPath}/resources/images/search.png" alt=""></button>
									</form>
								</div>
							</div>
						</div>
					</div>

					<!-- Wishlist -->
					<div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
						<div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
							<div class="wishlist d-flex flex-row align-items-center justify-content-end">
								<div class="wishlist_icon"><img src="resources/images/heart.png" alt=""></div>
								<div class="wishlist_content">
									<div class="wishlist_text"><a href="#">Yêu thích</a></div>
									<div class="wishlist_count"></div>
								</div>
							</div>

							<!-- Cart -->
							<div class="cart">
								<div class="cart_container d-flex flex-row align-items-center justify-content-end">
									<div class="cart_icon">
										<img src="${pageContext.request.contextPath}/resources/images/cart.png" alt="">
										<div class="cart_count"><span><c:if test = "${TotalQuantityCart!=null}">
         														<c:out value = "${TotalQuantityCart}"/>
      														</c:if>
      														<c:if test = "${TotalQuantityCart==null}">
         														<c:out value = "0"/>
      														</c:if></span></div>
									</div>
									<div class="cart_content">
										<div class="cart_text"><a href="${pageContext.request.contextPath}/shoppingcart">Giỏ Hàng</a></div>
										<div class="cart_price"><fmt:formatNumber value = "${TotalPriceCart}" type="number" maxIntegerDigits="14"/></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Main Navigation -->

		<nav class="main_nav">
			<div class="container">
				<div class="row">
					<div class="col">
						
						<div class="main_nav_content d-flex flex-row">

							<!-- Categories Menu -->

							<div class="cat_menu_container">
								<div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
									<div class="cat_burger"><span></span><span></span><span></span></div>
									<div class="cat_menu_text">Sản Phẩm</div>
								</div>

								<ul class="cat_menu">
									<c:forEach var="category" items= "${categories}">
									<li><a class="clc" href="#">${category.getTitle()}</a></li>
									</c:forEach>
								</ul>
							</div>

							<!-- Main Nav Menu -->

							<div class="main_nav_menu ml-auto">
								<ul class="standard_dropdown main_nav_dropdown">
									<li><a href="#">Trang chủ<i class="fas fa-chevron-down"></i></a></li>
									<li class="hassubs">
										<a href="#">Siêu giảm giá<i class="fas fa-chevron-down"></i></a>
										<ul>
											<li>
												<a href="#">Danh mục<i class="fas fa-chevron-down"></i></a>
												<ul>
													<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
													<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
													<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
												</ul>
											</li>
											<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
										</ul>
									</li>
									<li class="hassubs">
										<a href="#">Thương Hiệu Nổi Tiếng<i class="fas fa-chevron-down"></i></a>
										<ul>
											<li>
												<a href="#">Danh mục<i class="fas fa-chevron-down"></i></a>
												<ul>
													<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
													<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
													<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
												</ul>
											</li>
											<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="#">Danh mục<i class="fas fa-chevron-down"></i></a></li>
										</ul>
									</li>
									<li class="hassubs">
										<a href="#">Trang<i class="fas fa-chevron-down"></i></a>
										<ul>
											<li><a href="quan-ly">Quản lý sản phẩm<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="product.html">Sản Phẩm<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="blog.html">Bài Viết<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="blog_single.html">Đăng Bài Viết<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="regular.html">Đăng Thường Xuyên<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="cart.html">Giỏ Hàng<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="contact.html">Liên Hệ<i class="fas fa-chevron-down"></i></a></li>
										</ul>
									</li>
									<li><a href="${pageContext.request.contextPath}/news">Bài Viết<i class="fas fa-chevron-down"></i></a></li>
									<li><a href="contact.html">Liên Hệ<i class="fas fa-chevron-down"></i></a></li>
								</ul>
							</div>

							<!-- Menu Trigger -->

							<div class="menu_trigger_container ml-auto">
								<div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
									<div class="menu_burger">
										<div class="menu_trigger_text">menu</div>
										<div class="cat_burger menu_burger_inner"><span></span><span></span><span></span></div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</nav>
		
		<!-- Menu -->

		<div class="page_menu">
			<div class="container">
				<div class="row">
					<div class="col">
						
						<div class="page_menu_content">
							
							<div class="page_menu_search">
								<form action="#">
									<input type="search" required="required" class="page_menu_search_input" placeholder="Search for products...">
								</form>
							</div>
							<ul class="page_menu_nav">
								<li class="page_menu_item has-children">
									<a href="#">Language<i class="fa fa-angle-down"></i></a>
									<ul class="page_menu_selection">
										<li><a href="#">English<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Italian<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Spanish<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Japanese<i class="fa fa-angle-down"></i></a></li>
									</ul>
								</li>
								<li class="page_menu_item has-children">
									<a href="#">Currency<i class="fa fa-angle-down"></i></a>
									<ul class="page_menu_selection">
										<li><a href="#">US Dollar<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">EUR Euro<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">GBP British Pound<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">JPY Japanese Yen<i class="fa fa-angle-down"></i></a></li>
									</ul>
								</li>
								<li class="page_menu_item">
									<a href="#">Trang chủ<i class="fa fa-angle-down"></i></a>
								</li>
								<li class="page_menu_item has-children">
									<a href="#">Giao dịch nhanh<i class="fa fa-angle-down"></i></a>
									<ul class="page_menu_selection">
										<li><a href="#">Siêu giao dịch<i class="fa fa-angle-down"></i></a></li>
										<li class="page_menu_item has-children">
											<a href="#">Danh Mục<i class="fa fa-angle-down"></i></a>
											<ul class="page_menu_selection">
												<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
												<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
												<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
												<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
											</ul>
										</li>
										<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
									</ul>
								</li>
								<li class="page_menu_item has-children">
									<a href="#">Thương hiệu nổi bật<i class="fa fa-angle-down"></i></a>
									<ul class="page_menu_selection">
										<li><a href="#">Thương hiệu nổi bật<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
									</ul>
								</li>
								<li class="page_menu_item has-children">
									<a href="#">Trending Styles<i class="fa fa-angle-down"></i></a>
									<ul class="page_menu_selection">
										<li><a href="#">Phong cách thịnh hành<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
										<li><a href="#">Danh Mục<i class="fa fa-angle-down"></i></a></li>
									</ul>
								</li>
								<li class="page_menu_item"><a href="blog.html">Bài Viết<i class="fa fa-angle-down"></i></a></li>
								<li class="page_menu_item"><a href="contact.html">Liên hệ<i class="fa fa-angle-down"></i></a></li>
							</ul>
							
							<div class="menu_contact">
								<div class="menu_contact_item"><div class="menu_contact_icon"><img src="resources/images/phone_white.png" alt=""></div>+38 068 005 3570</div>
								<div class="menu_contact_item"><div class="menu_contact_icon"><img src="resources/images/mail_white.png" alt=""></div><a href="mailto:fastsales@gmail.com">fastsales@gmail.com</a></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</header>
	