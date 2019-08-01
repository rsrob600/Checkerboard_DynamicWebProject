<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Check-Master</title>
</head>
<body>

	<div class='container'>
	
		<!-- Initialize width and height variables with a zero value in case input not received -->
		<%int w = 0; int h = 0;%>
				
		<!-- Check the values of the query parameters inside of your JSP file. -->
		<% if(request.getParameter("width") != null){
			w = Integer.parseInt(request.getParameter("width"));
		}
   	 	if(request.getParameter("height") != null){
   	 		h = Integer.parseInt(request.getParameter("height")); 
   	 	}%>

	
		<h1>Checkerboard: <%= w%>w X <%= h%>h</h1>

			<!-- Establish the number of rows to iterate through as "height" -->
			<%for(int i = 0; i < h; i++){%>
				<!-- Establish an alternating pattern for even rows starting with blue -->
				<%if(i % 2 == 0) {%>
				<div class='even_row'>
					<!-- Establish the number of columns to iterate through as "width" -->
					<%for(int j = 0; j < w; j++){%>
						<!-- Establish an alternating pattern for blocks starting with blue -->
						<%if(j % 2 == 0){%>
							<div class='blue'></div>
						<%} else {%>
							<div class='purple'></div>
						<%}%>
					<%}%>
					</div>
				<%} else {%>
				<!-- Establish an alternating pattern for odd rows starting with purple -->
				<div class='odd_row'>
					<!-- Establish the number of columns to iterate through as "width" -->
					<%for(int j = 0; j < w; j++){%>
						<!-- Establish an alternating pattern for blocks starting with purple -->
						<%if(j % 2 == 0){%>
							<div class='purple'></div>
						<%} else {%>
							<div class='blue'></div>
						<%}
					}%>
					</div>
				<%}%>
			<%}%>
	
	</div>


</body>
</html>