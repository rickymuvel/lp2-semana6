<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery.js"></script>
<script src="js/jquery.validate.js"></script>
<script src="js/messages_es.js"></script>




</head>

<body>
<h1>Registra Alumno</h1>

<form action="crudAlumno" id="myForm"> 
	<input type="hidden" name="metodo" value="inserta">
	<table>
		<tr>
			<td>Nombre</td>
			<td><input type="text" id="nombre" name="nombre" > </td>
		</tr>	  
		<tr>
			<td>Apellido</td>
			<td><input type="text" id="apellido"  name="apellido" > </td>
		</tr>
		<tr>
			<td>Edad</td>
			<td><input type="text" id="edad" name="edad"  > </td>
		</tr>	
		<tr>
			<td>Fecha</td>
			<td><input type="text" id="fecha" name="fecha"  > </td>
		</tr>	
		<tr>
			<td><input type="submit" value="enviar"></td>  
			<td><input type="reset" value="borrar"> </td>
		</tr>		
	</table>
</form>
<script type="text/javascript">

		
	    
	$().ready(function() {
		$.validator.addMethod("dateFormat",
		    function(value, element) {
		        return value.match(/^(0[1-9]|[12][0-9]|3[01])[-//.](0[1-9]|1[012])[-//.](19|20)\d\d$/);
		 },"La fecha debe tener el formato dd-mm-yyyy.");
		
		$("#myForm").validate( //#myForm es el id="myForm" del <form>
		  { debug: true,
			rules: {
				  nombre: {  
					  required: true,
					  rangelength :[3,10]
                  },
                  edad: {
                      required: true,
                      digits: true,
                      min: 1,
                      max: 120
                  },
                  apellido: {
                	  required: true
                  },
                  fecha: {
                	  required: true,
                	  dateFormat: true
                  }
              }  
		  
		  }		
		  
		);
	});
</script>
</body>
</html>