<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/templates/taglib.jsp" %>
<!-- ============================================================== -->
	            <!-- Bread crumb and right sidebar toggle -->
	            <!-- ============================================================== -->
	             <div class="page-breadcrumb">
	                <div class="row">
	                    <div class="col-12 d-flex no-block align-items-center">
	                        <h3 class="page-title">Edit Product</h3>
	                        <div class="ml-auto">
		                		<c:if test="${not empty msg}">
						       	 	<h3 class="text-success">${msg}</h3>
						    	</c:if>
						    </div>
	                        <div class="ml-auto text-right">
	                            <nav aria-label="breadcrumb">
	                                <ol class="breadcrumb">
	                                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">home</a></li>
	                                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/book/index/1">Product Management</a></li>
	                                    <li class="breadcrumb-item active" aria-current="page">Edit</li>
	                                </ol>
	                            </nav>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <!-- ============================================================== -->
	            <!-- End Bread crumb and right sidebar toggle -->
	            <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->
                <div class="row">
					<div class="col-md-12">
						<c:if test="${not empty objPro}">
							<div class="card">
								<form id="form" class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
									<div class="card-body">
										<div class="form-group row">
											<label for="bname" class="col-sm-3 text-right control-label col-form-label">Product's name</label>
											<div class="col-sm-9">
												<input value="${objPro.bname}" name="bname" type="text" class="form-control" id="bname" placeholder="Product's name">
											</div>
										</div>
										<div class="form-group row">
											<label for="fname" class="col-sm-3 text-right control-label col-form-label">Category</label>
											<div class="col-sm-9">
												<select name="cid" class="form-control">
													<c:if test="${not empty listCatChil}">
														<c:forEach items="${listCatChil}" var="objCat">
															<c:choose>
																<c:when test="${objCat.cid == objPro.cid}">
																	<option selected="selected" value="${objCat.cid}"> ${objCat.cname}</option>
																</c:when>
																<c:otherwise>
																	<option value="${objCat.cid}"> ${objCat.cname}</option>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</c:if>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="price" class="col-sm-3 text-right control-label col-form-label">Price</label>
											<div class="col-sm-9">
												<input value="${objPro.price}" name="price" type="number" class="form-control" id="price" placeholder="Price">
											</div>
										</div>
										<div class="form-group row">
											<label for="avatar" class="col-sm-3 text-right control-label col-form-label">Image</label>
											<div class="col-sm-9">
												<input name="avatar" type="file" class="form-control" id="avartar">
											</div>
											<c:if test="${not empty objPro.picture}">
												<label for="avatar" class="col-sm-3 text-right control-label col-form-label">Old Image</label>
												<div class="col-sm-9">
													<img width="50px" height="50px" alt="Old Image" src="${pageContext.request.contextPath}/pathUrl/files/${objPro.picture}">
												</div>
											</c:if>
										</div>
										<div class="form-group row">
											<label for="decription" class="col-sm-3 text-right control-label col-form-label">Decription</label>
											<div class="col-sm-9">
												<textarea id="decription" class="form-control ckeditor" name="decription" rows="" cols="">${objPro.decription}</textarea>
											</div>
										</div>
										<div class="form-group row">
											<label for="detail" class="col-sm-3 text-right control-label col-form-label">Detail</label>
											<div class="col-sm-9">
												<textarea id="detail" class="form-control ckeditor" name="detail" rows="" cols="">${objPro.detail}</textarea>
											</div>
										</div>
										<div class="border-top">
											<div class="card-body" id="submit">
												<button type="submit" class="btn btn-primary">Edit</button>
											</div>
										</div>
									</div>
								</form>
								<script type="text/javascript">
							    	document.getElementById("book").classList.add('active-menu');
						        	$(document).ready(function(){
						        		$('#form').validate({
						        			ignore: [],
						        			rules:{
						        				bname:{
						        					required:true
						        				},
						        				price:{
						        					required: true,
						        					number: true
						        				},
						        				decription:{
						        					required:true
						        				},
						        				detail:{
						        					required:true
						        				},
						        			},
						        			messages:{
						        				bname:{
						        					required: 'Insert Product\'s name, please!'
						        				},
						        				price:{
						        					required: 'Insert price, please!',
						        					number : 'Enter the correct number format'
						        				},
						        				decription:{
						        					required: 'Insert decription, please!'
						        				},
						        				detail:{
						        					required: 'Insert detail, please!'
						        				},
						        			},
						        		});
						        	});
						       	</script>
							</div>
						</c:if>
					</div>
                </div>