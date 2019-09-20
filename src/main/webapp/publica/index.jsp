<%@include file="/includes/header.jsp"%>
<%@include file="/includes/navbar.jsp"%>
<%@include file="../includes/mensaje.jsp"%>

<%@page import="com.ipartek.formacion.controller.publica.VideoController"%>

<style>


.mt-2{


width:30%;



}

form{

display:inline;
margin-top:10%;
margin-left:10%;


}

.bg-dark{

margin-bottom:1%;


}

.list-group{

margin-top:3%;

}




</style>
		
	<div class="row">
		
		
			<div class="col">
			
			
				<form action="publica/videos" class="mt-2">
						<input class="form-control-inline" type="search" name="nombreBuscar" placeholder="Buscar por Nombre" required>
						<input type="hidden" name="op" value="<%=VideoController.OP_BUSCAR%>">
						<button type="submit" class="btn btn-primary">Filtrar Nombre <i class="fas fa-search"></i></button>
				</form>
					
					
				
				<form action="publica/videos" class="mt-2">
					<input class="form-control-inline" type="search" name="usuarioBuscar" placeholder="Buscar por Usuario" required>
					<input type="hidden" name="op" value="<%=VideoController.OP_BUSCAR_POR_USUARIO%>">
					<button type="submit" class="btn btn-primary">Filtrar Usuario <i class="fas fa-search"></i></button>
				</form><br>
				
				
				<ul class="list-group">
				
		  			<c:forEach items="${videos}" var="v" >	 
		  			 
	  				  	<li class="list-group-item">
	  				  	
		  				  	<div class="row ml-1">
		  				  			<div class="col-12 col-md-2">
						  		
						  				<img class="float-left mr-3" src="https://img.youtube.com/vi/${v.codigo}/default.jpg" alt="Imagen destacda del video ${v.nombre}"/>
						  			
						  			</div>
						  			<div class="col-12 col-md-9">
						  			
							  			<a href="publica/videos?id=${v.id }&op=<%=VideoController.OP_DETALLE  %>"><p class="h3">${v.nombre}</p></a>
							  			<p><i class="fas fa-user mr-1"></i>${v.usuario.nombre}</p>  			
							  			<p><i class="fas fa-tag mr-1"></i>${v.categoria.nombre}</p>
							  			
							  			
							  				<a href="frontoffice/videos?id=${v.id }&op=55">
							  					<p class="text-danger"><i class="fas fa-heart mr-1"></i>${v.likes}</p>
							  				</a>

						  			</div>
						  		</div>
					  							  		
					  	</li>					
					</c:forEach>
				</ul>		
			</div>
	
	</div>

    
    	    	
<%@include file="/includes/footer.jsp"%>   