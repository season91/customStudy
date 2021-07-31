<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.star_rating_box{
		margin: 15px 0 35 px;
		font-size: 0;
		text-align: center;
	}
	
	.star_rating_box .ico_star{
		display:inline-block;
		width: 30px;
		height: 30px;
		background: url("../img/ico_star.png");
		text-align: -9999px;
		background-size: 30px 30px;
		vertical-align: top;
		cursor: pointer;
	}
	
	.star_rating_box .ico_star.is_selected{
		background-image: url("../img/ico_start_on.png");
		
	}
	
	.star_rating_box .ico_star+.ico_star{
		margin-left: 10px;
	}
	
</style>
</head>
<body>

	<div>
		<div>
			<strong>별점주기</strong>
			<div class="star_rating_box">
			
				<span>1</span>
				<span>2</span>
				<span>3</span>
				<span>4</span>
				<span>5</span>
			</div>
		</div>
	</div>
</body>
</html>