<%@page import="vn.edu.vinaenter.util.SlugUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/templates/taglib.jsp" %>
<!-- breadcrumb -->
	<div class="bread-crumb bgwhite flex-w p-l-52 p-r-15 p-t-30 p-l-15-sm">
		<a href="${pageContext.request.contextPath}" class="s-text16">
			Home
			<i class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a>
		
		<c:if test="${not empty objCatParent}">
			<a href="${pageContext.request.contextPath}/${SlugUtil.makeSlug(objCatParent.cname)}/${objCatParent.cid}/1.html" class="s-text16">
				${objCatParent.cname}
				<i class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
			</a>
		</c:if>
		
		<c:if test="${not empty objCat}">
			<a href="${pageContext.request.contextPath}/${SlugUtil.makeSlug(objCat.cname)}/${objCat.cid}/1.html" class="s-text16">
				${objCat.cname}
				<i class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
			</a>
		</c:if>
		
		<c:if test="${not empty objPro}">
			<span class="s-text17">
				${objPro.bname}
			</span>	
		</c:if>
		
	</div>
	
	<!-- Product Detail -->
	<div class="container bgwhite p-t-35 p-b-80">
		<c:if test="${not empty objPro}">
			<div class="flex-w flex-sb">
				<div class="w-size13 p-t-30 respon5">
					<div class="wrap-slick3 flex-sb flex-w">
						<div class="wrap-slick3-dots"></div>
	
						<div class="slick3">
							<div class="item-slick3" data-thumb="${pageContext.request.contextPath}/pathUrl/files/${objPro.picture}">
								<div class="wrap-pic-w">
									<img src="${pageContext.request.contextPath}/pathUrl/files/${objPro.picture}" alt="IMG-PRODUCT">
								</div>
							</div>
	
							<div class="item-slick3" data-thumb="${pageContext.request.contextPath}/pathUrl/files/${objPro.picture}">
								<div class="wrap-pic-w">
									<img src="${pageContext.request.contextPath}/pathUrl/files/${objPro.picture}" alt="IMG-PRODUCT">
								</div>
							</div>
	
							<div class="item-slick3" data-thumb="${pageContext.request.contextPath}/pathUrl/files/${objPro.picture}">
								<div class="wrap-pic-w">
									<img src="${pageContext.request.contextPath}/pathUrl/files/${objPro.picture}" alt="IMG-PRODUCT">
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="w-size14 p-t-30 respon5">
					<h4 class="product-detail-name m-text17 p-b-13">
						${objPro.bname}
					</h4>
					
					<h5 class="product-detail-name m-text15">
						Views: ${objPro.count_view}
					</h5>
					
					<h5 class="product-detail-name m-text15">
						Price: ${Integer.valueOf(objPro.price)} VNĐ
					</h5>
					
					<c:if test="${objPro.discount > 0}">
						<h4 class="s-text8 p-t-10" style="color: red;">
							Sale: ${Integer.valueOf(objPro.discount * 100)} %
						</h4>
					</c:if>
					
					<!--  -->
					<div class="p-t-33 p-b-60">
						<span class="m-text17">Quantity: </span>
						<div class="flex-r-m flex-w p-t-10">
							<div class="w-size16 flex-m flex-w">
								<div class="flex-w bo5 of-hidden m-r-22 m-t-10 m-b-10">
									<button class="btn-num-product-down color1 flex-c-m size7 bg8 eff2">
										<i class="fs-12 fa fa-minus" aria-hidden="true"></i>
									</button>
									
									<input class="size8 m-text18 t-center num-product" type="number" id="quantity-product" name="num-product" value="1">
	
									<button class="btn-num-product-up color1 flex-c-m size7 bg8 eff2">
										<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
									</button>
								</div>
	
								<div class="btn-addcart-product-detail size9 trans-0-4 m-t-10 m-b-10">
									<a onclick="return addCart1(${objPro.bid});" href="javascript:void(0);" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
										Add to Cart
									</a>
								</div>
							</div>
						</div>
						<script type="text/javascript">
							function addCart1(x){
								var quantity = $('#quantity-product').val();
								$.ajax({
									url: '${pageContext.request.contextPath}/addcart',
									type: 'POST',
									cache: false,
									data: {
										aIdPro : x, aQuantity : quantity
									},
									success: function(data) {
										$('#total-items').html(data);
									},
									error: function() {
										alert('Error!');
									}
								});
								return false;
							}						
						</script>
					</div>
	
	
					<!--  -->
					<div class="wrap-dropdown-content bo6 p-t-15 p-b-14 active-dropdown-content">
						<h5 class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
							Detail
							<i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i>
							<i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
						</h5>
	
						<div class="dropdown-content dis-none p-t-15 p-b-23">
							<p class="s-text8">
								${objPro.detail}
							</p>
						</div>
					</div>
	
					<div class="wrap-dropdown-content bo7 p-t-15 p-b-14">
						<h5 class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
							More Information
							<i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i>
							<i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
						</h5>
	
						<div class="dropdown-content dis-none p-t-15 p-b-23">
							<p class="s-text8">
								${objPro.decription}
							</p>
						</div>
					</div>
	
					<div class="wrap-dropdown-content bo7 p-t-15 p-b-14">
						<h5 id="total-cmt" class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
							Reviews (${totalCmt})
							<i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i>
							<i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
						</h5>
	
						<div class="dropdown-content dis-none p-t-15 p-b-23">
							<div id="list-comment">
								<c:choose>
									<c:when test="${not empty listComment}">
										<c:forEach items="${listComment}" var="objCmt">
											<div class="size16 m-b-20">
												<p><span id="usercmt" class="bo4 size15 m-b-20">${objCmt.username}</span><span id="contentcmt">${objCmt.content}</span></p>
												<p class="time-cmt">(${objCmt.date_create})</p>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<div class="size15 m-b-20">
											<p class="sizefull s-text7 p-l-22 p-r-22">
												There are no comments for this product yet
											</p>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="area-cmt">
								<c:choose>
									<c:when test="${not empty user}">
										<form id="comment-ajax" class="leave-comment" action="" method="POST">
											<div class="bo4 size15 m-b-20">
												<input class="sizefull s-text7 p-l-22 p-r-22" type="text" id="content-cmt" name="content" placeholder="Comment">
											</div>
											
											<div class="w-size25">
												<button class="flex-c-m size1 bg1 bo-rad-23 hov1 m-text3 trans-0-4" type="submit">
													Comment
												</button>
											</div>
										</form>
									</c:when>
									<c:otherwise>
										<a class="flex-c-m size1 bg1 bo-rad-23 hov1 m-text3 trans-0-4" href="${pageContext.request.contextPath}/login.html">Đăng nhập để Comment</a>
									</c:otherwise>
								</c:choose>
							</div>
							<script type="text/javascript">
								$(document).ready(function(){
					        		$('#comment-ajax').validate({
					        			rules:{
					        				content: {
												required: true
					        				}
					        			},
					        			messages:{
					        				content: {
												required: 'Not empty, please!'
					        				}
					        			},
					        			submitHandler: function(form){
				 							var content = $('#content-cmt').val();
				 							var bid = ${objPro.bid};
				 							$.ajax({
				 								url: '${pageContext.request.contextPath}/comment',
				 								type: 'POST',
				 								cache: false,
				 								data: {
				 									aContent: content, aBid: bid
				 								},
				 								success: function(data){
				 									var result = '';
				 									$.each(data, function(key, item){
				 										result += '<div class="size16 m-b-20">';
				 										result += 	'<p><span id="usercmt" class="bo4 size15 m-b-20">' + item['username'] + '</span><span id="contentcmt">' + item['content'] + '</span></p>';
				 										result += 	'<p class="time-cmt">(' + item['date_create'] + ')</p>';
				 										result += '</div>';
				 									});
				 									$(function(){
				 										$('#list-comment').empty();
				 									});
				 									$(function(){
				 										$('#list-comment').append(result);
				 									});
				 									var total = '';
				 									total += 'Reviews (' + data.length + ')';
				 									total += '<i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i>';
				 									total += '<i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>';
				 									$(function(){
				 										$('#total-cmt').empty();
				 									});
				 									$(function(){
				 										$('#total-cmt').append(total);
				 									});
				 									document.getElementById("comment-ajax").reset();
				 								},
				 								error: function(){
				 									alert('Error!');
				 								},
				 							});
				 						}
					        		});
					        	});
							</script>
						</div>
					</div>
				</div>
			</div>
		</c:if>
	</div>


	<!-- Relate Product -->
	<section class="relateproduct bgwhite p-t-45 p-b-138">
		<div class="container">
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">
					Related products
				</h3>
			</div>
			
			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">
					<c:if test="${not empty listProLQ}">
						<c:forEach var="objPro" items="${listProLQ}">
							<c:set value="${pageContext.request.contextPath}/${SlugUtil.makeSlug(objPro.cname)}/${objPro.cid}/${SlugUtil.makeSlug(objPro.bname)}/${objPro.bid}.html" var="urlDetail"></c:set>
							<c:choose>
								<c:when test="${objPro.discount > 0}">
									<c:set var="pro" value="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale"></c:set>
								</c:when>
								<c:otherwise>
									<c:set var="pro" value="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew"></c:set>
								</c:otherwise>
							</c:choose>
							<div class="item-slick2 p-l-15 p-r-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="${pro}">
										<img width="272px" height="272px" src="${pageContext.request.contextPath}/pathUrl/files/${objPro.picture}" alt="IMG-PRODUCT">
		
										<div class="block2-overlay trans-0-4">
											<a onclick="return addFavorite(${objPro.bid});" href="javascript:void(0);" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>
		
											<div class="block2-btn-addcart w-size1 trans-0-4">
												<a onclick="return addCart(${objPro.bid});" href="javascript:void(0);" class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart
												</a>
											</div>
										</div>
									</div>
		
									<div class="block2-txt p-t-20">
										<a href="${urlDetail}" style="height: 90px" class="block2-name dis-block s-text3 p-b-5">
											${objPro.bname}
										</a>
		
										<span class="block2-price m-text6 p-r-5">
											Price: ${Integer.valueOf(objPro.price)} VND
										</span>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>

		</div>
		<script type="text/javascript">
			document.getElementById("product").classList.add('active-menu');
			function addCart(x){
				$.ajax({
					url: '${pageContext.request.contextPath}/addcart',
					type: 'POST',
					cache: false,
					data: {
						aIdPro : x
					},
					success: function(data) {
						$('.header-icons-noti').html(data);
					},
					error: function() {
						alert('Error!');
					}
				});
				return false;
			}
		</script>
	</section>