<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<script>
$(function() {
	$('li').click(function() 
		{
		alert($("li").attr("data-id"));
		
	});
});
</script>
</head>
<body>
	<div id="adiv">
		<ul>
			<li data-id="3">Cat</li>
			<li data-id="4">Dog</li>
		</ul>
	</div>
</body>
</html>