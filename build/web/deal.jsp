<%-- 
    Document   : deal
    Created on : 02-Mar-2017, 21:08:14
    Author     : NguyenDang
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THANH TOÁN - LAPTOP SHOP</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
<link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'></head>
    </head>
    <body>
        <%
            User users = (User) session.getAttribute("user");
            if (users == null) {
                response.sendRedirect("/LaptopShop/login.jsp");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">THANH TOÁN</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.jsp">Trang Chủ</a><label>/</label>Thanh Toán</h3>
		<div class="clearfix"> </div>
	</div>
</div>
        
        	<div class="login">
		<div class="container">
                    <form action="CheckOutServlet" method="POST"> 
			<div class="col-md-6 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
                            <span>Địa Chỉ Của Bạn * : </span>
                            <br>
				<div class="login-mail">
					<input type="text" placeholder="Số nhà, đường, phường, quận..." name="address" required>
					<i class="glyphicon glyphicon-map-marker"></i>
				</div>
                            <span>Họ và tên</span>
                            <br>
				<div class="login-mail">
					<input type="text" placeholder="Họ và tên của người nhận hàng" name="name" required>
					<i class="glyphicon glyphicon-user"></i>
				</div>
                            <span>Điện thoại</span>
                            <br>
				<div class="login-mail">
					<input type="text" placeholder="Điện thoại di động của người nhận hàng" name="phone" required>
					<i class="glyphicon glyphicon-phone"></i>
				</div>
                            <div>
                                <span>Phương Thức Thanh Toán * : </span>
                                <select name="payment">
                                    <option value="Bank transfer">Chuyển khoản</option>
                                    <option value="Live">Trực tiếp</option>
                                        
                                </select>
				</div>
				
				   

			
			</div>
			<div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
				<label class="hvr-sweep-to-top login-sub">
                                    
					<input type="submit" value="Thanh Toán Ngay Bây Giờ">
					</label>
					
			</div>
			
			<div class="clearfix"> </div>
			</form>

	</div>
	</div>        
        <div class="social animated wow fadeInUp" data-wow-delay=".1s">
	<div class="container">
		<div class="col-sm-3 social-ic">
			<a href="#">FACEBOOK</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">TWITTER</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">GOOGLE+</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">PINTEREST</a>
		</div>
	<div class="clearfix"></div>
	</div>
</div>
        
        <jsp:include page="footer.jsp"></jsp:include>
        
    </body>
</html>
