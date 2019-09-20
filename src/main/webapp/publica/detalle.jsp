
<%@page import="com.ipartek.formacion.controller.publica.VideoController"%>

<%@include file="../../includes/header.jsp"%>
<%@include file="../../includes/navbar.jsp"%>

		
	<%@include file="../../includes/mensaje.jsp"%>
		
		
		
		<style>
		
		h1{
		
		margin-top:3%;
		text-align:center;
		
		}
		
		.text-danger{
		
		
		
		float:right;
	    margin-top:-7%;
		
		}
		
		</style>

		<h1 class="text-info">DETALLE VIDEO <i class="fab fa-youtube"></i></h1>	
		
		
		
			
		
			
	
			<div class="col">	
		
			<div class="embed-responsive embed-responsive-16by9">
		
				<iframe class="embed-responsive-item"
				        src="https://www.youtube.com/embed/${video.codigo}" 
				        frameborder="0" 
				        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
				        allowfullscreen></iframe>
			</div> 
			
				<h4 class="text-info"><i class="fab fa-youtube"></i> ${video.nombre}</h4>
				<p class="text-info"><i class="fas fa-tag mr-1"></i> ${video.categoria.nombre} </p>
				<a href="frontoffice/videos?id=${video.id }&op=55">
							  					<p class="text-danger"><i class="fas fa-heart mr-1"></i>${video.likes}</p>
				</a>		
				<p class="text-info"><i class="fas fa-user mr-1"></i> ${video.usuario.nombre} </p>
			       
		</div>
				
				
				
				
			
			
		</div>
		
		
	</div>
	
	
<%@include file="../../includes/footer.jsp"%>