

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	  <a class="navbar-brand" href="publica/videos"><fmt:message key="menu.inicio" /> <i class="fab fa-youtube"></i></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	
	       	
	        
	   
	        		<li class="nav-item">
	        		<a class="nav-link" href="ejercicios.jsp">Ejercicios <i class="fas fa-sticky-note"></i></a>
	        	</li>	
	        	
	        <c:if test="${usuario == null}">
	       		<li class="nav-item">
	        		<a class="nav-link" href="login.jsp">Login <i class="fas fa-sign-in-alt"></i></a>
	        	</li>	
	        </c:if>	
        
	        <c:if test="${usuario.rol.id == 1}"> <!-- Si entra como admin -->
	          <li class="nav-item">
		        <a class="nav-link" href="backoffice/inicio">Backoffice</a>
		      </li>
		      
		      <li class="nav-item">
		        <a class="nav-link" href="backoffice/videos">Gestionar Videos <i class="fab fa-youtube"></i></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="backoffice/usuario">Gestionar Usuarios <i class="fas fa-users"></i></a>
		      </li>
		          <li class="nav-item">
		        <a class="nav-link" href="backoffice/categoria">Gestionar Categorias <i class="fas fa-tags"></i></a>
		      </li>
		    </c:if>	
		    
		     <c:if test="${usuario.rol.id == 2}"> <!-- Si entra como usuario -->
		     
		     
		     <li class="nav-item">
		        <a class="nav-link" href="frontoffice/inicio">Mi Panel</a>
		      </li>
		      
		      <li class="nav-item">
		        <a class="nav-link" href="frontoffice/videos">Mis Videos <i class="fab fa-youtube"></i></a>
		      </li>
		      
		      <li class="nav-item">
		        <a class="nav-link" href="frontoffice/usuario?id=${usuario.id }">Mi Perfil <i class="fab fa-user"></i></a>
		      </li>
		     
		     
		     </c:if>
		    
		    <c:if test="${usuario != null}">
	          <li class="nav-item">	        		
	        			${usuario.nombre}
	        			<i class="fas fa-user"></i>	        		
	        	</li>
	        	<li class="nav-item">
	        		<a class="nav-link" href="logout"><i class="fas fa-sign-out-alt"></i> Salir</a>
	        	</li>
	        </c:if>	
	        

	      
	      
	    </ul>	   
	  </div>
	</nav>
    <!-- end navar -->
    
    <nav class="bg-dark">
    	<a href="i18n?idiomaSeleccionado=en_EN"><img src="resources/img/british.png" alt="" class="${sessionScope.idiomaSeleccionado != 'en_EN' ? 'inactive': ''  }"></a>
    	<a href="i18n?idiomaSeleccionado=eu_ES"><img src="resources/img/euskadi.png" alt="" class="${sessionScope.idiomaSeleccionado != 'eu_ES' ? 'inactive': ''  }"></a>
    	<a href="i18n?idiomaSeleccionado=es_ES"><img src="resources/img/Spain.png" alt="" class="${sessionScope.idiomaSeleccionado != 'es_ES' ? 'inactive': ''  }"></a> 
    </nav>
    
    
    <main class="container">