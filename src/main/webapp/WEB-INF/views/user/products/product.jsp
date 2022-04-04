<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file ="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Product details</title>
<style>
	.product-content{
	overflow-x: hidden
	}
</style>
</head>
<body>
<!-- 
Body Section 
-->

	<div class="row product-content">
<div id="sidebar" class="span3">
<div class="well well-small">
				<ul class="nav nav-list">
				
				<c:forEach var="item" items="${ categorys }">
					<li><a href='<c:url value = "/product/${ item.id }" />'><span
							class="icon-star"></span> ${ item.name }</a>
					</li>
				</c:forEach>
								
					<li><a class="totalInCart" href="ListCart"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;"> <fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }"/>₫ </span>
						</strong></a></li>
				</ul>
			</div>

			  <div class="well well-small alert alert-warning cntr">
				  <h2>50% Discount</h2>
				  <p> 
					 only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a>
				  </p>
			  </div>
			  <div class="well well-small" ><a href="#"><img src="<c:url value ="/assets/user/img/slide/paypal.jpg"/>" alt="payment method paypal"></a></div>
			
			<a class="shopBtn btn-block" href="#">Upcoming products <br><small>Click to view</small></a>
			<br>
			<br>
			<ul class="nav nav-list promowrapper">
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="<c:url value ="/assets/user/img/slide/airforce1shadow.jpg"/>" alt="bootstrap ecommerce templates">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="<c:url value ="/assets/user/img/slide/yeezy350.jpg"/>" alt="shopping cart template">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="<c:url value ="/assets/user/img/slide/sbdunk.jpeg"/>" alt="bootstrap template">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
		  </ul>

	</div>
	<div class="span9">
    <ul class="breadcrumb">
    <li><a href="home">Home</a> <span class="divider">/</span></li>
    <li><a href="products.html">Our Products</a> <span class="divider">/</span></li>
    <li class="active">Product details</li>
    </ul>	
	<div class="well well-small">
	<div class="row-fluid">
			<div class="span5">
			<div id="myCarousel" class="carousel slide cntr">
                <div class="carousel-inner">
                  <div class="item active">
                   <a href="#"> <img src="<c:url value ="/assets/user/img/slide/${ product.img }"/>" alt="" style="width:100%"></a>
                  </div>
                  <div class="item">
                     <a href="#"> <img src="assets/img/b.jpg" alt="" style="width:100%"></a>
                  </div>
                  <div class="item">
                    <a href="#"> <img src="assets/img/e.jpg" alt="" style="width:100%"></a>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
            </div>
			</div>
			<div class="span7">
				<h3>${ product.name }</h3>
				<hr class="soft"/>
				
				<form class="form-horizontal qtyFrm" method="get" action="<c:url value ="/AddCart/${ product.id_product }"/>">
				  <div class="control-group">
					<label class="control-label"><span><fmt:formatNumber type="number" groupingUsed="true" value="${ product.price }" />₫</span></label>
					<div class="controls">
					<input type="number" min="0" value="0" class="span6">
					</div>
				  </div>
				
				  <div class="control-group">
					<label class="control-label"><span>Size</span></label>
					<div class="controls">
					 <select class="span11">
						  <option>${ p.sizes }</option>
						  <option>9.5 US</option>
						  <option>10 US</option>
						  <option>11 US</option>

						</select>
					</div>
				  </div>
				  <h4>100 items in stock</h4>
				  <p>${ product.title }
				  <p>
				  <button type=submit class="shopBtn"><span class=" icon-shopping-cart"></span> Add to cart</button>
				</form>
			</div>
			</div>
				<hr class="softn clr"/>


            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
              <li class=""><a href="#profile" data-toggle="tab">Related Products </a></li>
              
            </ul>
            <div id="myTabContent" class="tab-content tabWrapper">
            <div class="tab-pane fade active in" id="home">
				${ product.details }
			</div>
			<div class="tab-pane fade" id="profile">
			
			
			<c:set var="countList" value ="${ productByIDCategory.size() }" />
							<c:if test="${ productByIDCategory.size() > 6 }">
								<c:set var="countList" value ="6" />
							</c:if>
			
			<c:forEach var="item" items="${ productByIDCategory }" begin="1" end="${ countList }" varStatus="loop">
			
					
					<div class="row-fluid">	  
			<div class="span2">
				<img src="<c:url value ="/assets/user/img/slide/${ item.img }"/>" alt="">
			</div>
			<div class="span6">
				<h5>${ item.name }</h5>
				<p>
				${ item.title }
				</p>
			</div>
			<div class="span4 alignR">
			<form class="form-horizontal qtyFrm">
			<h3><fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" />₫</h3>
			<div class="btn-group">
			  <a href="<c:url value ="/AddCart/${ item.id_product }"/>" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
			  <a href="<c:url value ="/product-details/${ item.id_product }"/>" class="shopBtn">VIEW</a>
			 </div>
				</form>
			</div>
	</div>
			<hr class="soft"/>
					
					</c:forEach>
			
			
			

			
			</div>
              
              
            </div>

</div>
</div>
</div> <!-- Body wrapper -->
</body>