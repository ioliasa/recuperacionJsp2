<%@page import="com.jacaranda.access.DaoPelicula"%>
<%@page import="com.jacaranda.model.Pelicula"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Películas</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

</head>
<body>
	<!-- Cabecera -->
	<div class="header">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link active" href="#">Películas</a>
		  </li>
		</ul>
	</div>
	<!-- Cabecera -->
	
	<!-- Contenedor -->
	<div class="container">
			<div class="card text-center">
				<div class="card-body">
				    <h5 class="card-title">Añadir una nueva película</h5>
				    <a href="addPelicula.jsp" class="btn btn-primary">Añadir</a>
				</div>
			</div>
			<table class="table">
 		    	<thead>
					<tr>
						<th>CIP</th>
						<th>TÍTULO</th>
						<th>NACIONALIDAD</th>
						<th>PRESUPUESTO</th>
						<th>DURACIÓN</th>
						<th>EDITAR</th>
						<th>BORRAR</th>
						<th>AÑADIR PERSONAJE</th>
					</tr>
				</thead>
				<tbody>
			<%
				List <Pelicula> peliculas = DaoPelicula.getPeliculas();
			
				for(Pelicula pelicula: peliculas){
			%>
					<tr>
						<td><%=pelicula.getCip()%></td>
						<td><%=pelicula.getTitulo()%></td>
						<td><%=pelicula.getNacionalidad()%></td>
						<td><%=pelicula.getPresupuesto()%></td>
						<td><%=pelicula.getDuracion()%></td>
						<td>Editar</td>
						<td>Borrar</td>
						<td></td>
					</tr>


			     
				<%} %>
				</thbody>tbody>
			</table>	
	</div>
		
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>