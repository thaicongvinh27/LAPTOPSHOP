<%-- 
    Document   : content
    Created on : 28-Feb-2017, 22:46:57
    Author     : NguyenDang
--%>

<%@page import="model.Brand"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<%@page import="get.BrandGet"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
		
									
                                 
			<!--//colors-->
			<div class="sellers animated wow fadeInUp" data-wow-delay=".5s">
					
								<h3 class="best">Bán Chạy Nhất</h3>
					<div class="product-head">
                                            <%
                                for (Product p : productGet.getList3ProductByCategory(Long.parseLong(category_id_1))) {
                                %>
                                <div class="product-go" >
						<div class=" fashion-grid">
                                                    <a href="single.jsp?productID=<%=p.getProductID()%>"><img class="img-responsive" src="<%=p.getProductImageForward()%>" alt=""></a>
									
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
                                 String s = (String) session.getAttribute("txtsearch");
                                 if(s==null)
                                for (Product p : productGet.getListProduct()) {
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
                                    %><%
                                 else
                                for (Product p : productGet.getListProductSearch(s)) {
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
    </body>
</html>
