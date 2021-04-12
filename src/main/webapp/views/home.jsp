<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
</head>
<body>
<form action="POST" action="/home">
	
<div id="slide" class="carousel slide" data-ride="carousel">
	<ul class="carousel-indicators">
		<li data-target="#slide" data-slide-to="0" class="active"></li>
		<li data-target="#slide" data-slide-to="1" ></li>
		<li data-target="#slide" data-slide-to="2" ></li>
		<li data-target="#slide" data-slide-to="3" ></li>
	</ul>
	<div class="carousel-inner" >
		<div class="carousel-item active">
			<img alt="" src="./anh/thanhtruot1.png">
			<!--<div class="carousel-caption">
				<h1 class="display-2">Việt Hằng</h1>
				<h3>Một sản phẩm đến từ Đào Dưỡng</h3>
				<button type="button" class="btn btn-outline-light btn-lg">
					XEM
				</button>
				<button type="button"  class="btn btn-primary btn-lg">ĐI ĐẾN</button>
			</div>-->
		</div>
		<div class="carousel-item ">
			<img alt="" src="./anh/thanhtruot2.png">
		</div>
		<div class="carousel-item ">
			<img alt="" src="./anh/thanhtruot3.png">
		</div>
		<div class="carousel-item ">
			<img alt="" src="./anh/thanhtruot4.png">
		</div>
	</div>
</div>
<div class="container-fluid padding">
	<div class="row welcome text-center">
		<div class="col-12">
			<h1 class="display-4">Trang chủ</h1>
		</div>
		<!-- Horizontal Rule -->
		<hr> 
		
	</div>
</div>
<div class=" container">	
	<c:forEach items="${ ListVideo }" var="ListVideo">
			<div class="container-fluid padding">
				<div class="row padding">
					<div class="col-md-12 col-lg-6">
						<h2> ${ ListVideo.title }</h2>
						<p> ${ ListVideo.description } </p>
						
						<br>
					</div>
					<div class="col-lg-6">
					<a href="/ASSM/chitietbaiviet?id=${ ListVideo.id }">
						<img src=${ ListVideo.poster } class="img-fluid">
					</a>
						
					</div>
				</div>
				<button type="button" class="btn btn-outline" data-toggle="modal" data-target=${ user==null?"#acount" : "" }>
					<img alt="" src="./anh/like.png" height="20px">Like
				</button>
				<button type="button"  class="btn btn-primary btn-hover" data-toggle="modal" data-target=${ user==null?"#acount" : "" }>
					<img alt="" src="./anh/share.png" height="20px">Share
				</button>
			</div>		
			<hr>	
	</c:forEach>
</div>
<div class="container">
	<ul class="pagination mx-auto">
		<li class="page-item ">
			<a href="/ASSM/home?page=${ page-1 }" class="btn btn-outline-secondary">Pre</a>
		</li>
		<li class="page-item">
			<a class="btn btn-outline-secondary">${ page }</a>
		</li>
		<li class="page-item">
			<a  href="/ASSM/home?page=${ page+1 }" class="btn btn-outline-secondary">Next</a>
		</li>
	</ul>	
</div>
</form>
<div class="modal fade" id="acount" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Bạn chưa đăng nhập vui lòng đăng nhập để sử dụng chức năng !</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Từ chối</button>
                    <a class="btn btn-primary" href="/ASSM/dangnhap">Đăng nhập</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>