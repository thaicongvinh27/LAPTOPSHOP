<%-- 
    Document   : products
    Created on : 01-Mar-2017, 11:15:04
    Author     : NguyenDang
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="get.CategoryGet"%>
<%@page import="model.Category"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SẢN PHẨM - HUTECH ACOUSTIC SHOP</title>
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
<link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <% 
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        ProductGet productGet = new ProductGet();    
        BrandGet brandget = new BrandGet();
    String category_id = "";
    String brand_id = "";
    if(request.getParameter("category")!=null){
    category_id = request.getParameter("category");
    }
    if(request.getParameter("brand")!=null){
    brand_id = request.getParameter("brand");
    }
    CategoryGet categoryget = new CategoryGet();
    String category_id_1 = "1";
            %>
        <jsp:include page="header.jsp"></jsp:include>

       <div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Sản Phẩm</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.html">Trang Chủ</a><label>/</label>Sản Phẩm<label>/</label>Nhạc Cụ</h3>
		<div class="clearfix"> </div>
	</div>
</div>
        
        		<div class="product">
			<div class="container">
						<div class="col-md-3 product-bottom">
			<!--categories-->
			<div class="categories animated wow fadeInUp animated" data-wow-delay=".5s" >
					<h3>Loại Sản Phẩm</h3>
					<ul class="cate">
                                            <%
                       for (Category c : categoryget.getListCategory()) {
                                              %>
						<li><i class="glyphicon glyphicon-menu-right" ></i><a href="products.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>	
					 <% } %>
                                        </ul>
				</div>
                                         <div class="categories animated wow fadeInUp animated" data-wow-delay=".5s" >
					<h3>Thương Hiệu</h3>
                                        
					<ul class="cate">
                                            <%
                       for (Brand b : brandget.getListBrand()) {
                                              %>
						<li><i class="glyphicon glyphicon-menu-right" ></i><a href="productbrand.jsp?brand=<%=b.getBrandID()%>"><%=b.getBrandName()%></a></li>	
					 <% } %>
                                        </ul>
                                       
				</div>
		<!--//menu-->
		
			<div class="sellers animated wow fadeInUp" data-wow-delay=".5s">
					
								<h3 class="best">Bán Chạy Nhất</h3>
					<div class="product-head">
                                            <%
                                for (Product p : productGet.getList3ProductByCategory(Long.parseLong(category_id_1))) {
                                %>
					<div class="product-go">
						<div class=" fashion-grid">
									<a href="single.jsp?productID=<%=p.getProductID()%>"><img class="img-responsive " src="<%=p.getProductImageForward()%>" alt=""></a>
									
								</div>
							<div class=" fashion-grid1">
								<h6 class="best2"><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
								<span class=" price-in1"><%=formatter.format(p.getProductPrice())%> VNĐ</span>
								<p><a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a></p>
							</div>
								
							<div class="clearfix"> </div>
							</div>
                                                                <% } %>
						
							
							</div>
				</div>
				<!---->
 	</div>
                    
                            
			<div class="col-md-9 animated wow fadeInRight" data-wow-delay=".5s">  

			<div class="mid-popular">
                            
                             <%
                                for (Product p : productGet.getListProductByCategory(Long.parseLong(category_id))) {
                                %>
				<div class="col-sm-4 item-grid item-gr  simpleCart_shelfItem">
                                    
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp?productID=<%=p.getProductID()%>">
											<div class="grid-img">
												<img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<%=p.getProductImageForward()%>" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="" alt=""></a>
									<h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
                                                                        <p ><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
								
                                                                        <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
<%
                                    }
                                    %>

					<div class="clearfix"> </div>
				</div>
			</div>
                                
		
		<div class="clearfix"> </div>
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
