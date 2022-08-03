<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Pre TyT | 
 Regioanl Quindío</title>
<link rel="icon" sizes="192x192 250x250" href="image/favicon.png" type="image/png">
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>

  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
 	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
<?php if(@$_GET['w'])
{echo'<script>alert("'.@$_GET['w'].'");</script>';}
?>
<script>
function validateForm() {var y = document.forms["form"]["name"].value;	var letters = /^[A-Za-z]+$/;if (y == null || y == "") {alert("El campo de nombre debe ser diligenciado");return false;}var z =document.forms["form"]["college"].value;if (z == null || z == "") {alert("Debe ser llenada la institución educativa");return false;}var x = document.forms["form"]["email"].value;var atpos = x.indexOf("@");
var dotpos = x.lastIndexOf(".");if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {alert("Dirección de correo inválido");return false;}var a = document.forms["form"]["password"].value;if(a == null || a == ""){alert("La contraseña debe ser diligenciada");return false;}if(a.length<5 || a.length>25){alert("La contraseña debe tener una extensión entre 5 y 25 caracteres");return false;}
var b = document.forms["form"]["cpassword"].value;if (a!=b){alert("Las contraseñas no coinciden");return false;}}
</script>


</head>

<body>
<div class="header">
<div class="row">
<div class="col-lg-6">
<span class="logo">Pre TyT Quindío.</span></div>
<div class="col-md-2 col-md-offset-4">
<a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Ingresar</b></span></a></div>
<!--sign in modal start-->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title title1"><span style="color:orange">Ingresar al simulador.</span></h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" action="login.php?q=index.php" method="POST">
<fieldset>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-3 control-label" for="email"></label>  
  <div class="col-md-6">
  <input id="email" name="email" placeholder="Ingrese su correo electrónico" class="form-control input-md" type="email">
    
  </div>
</div>


<!-- Password input-->
<div class="form-group">
  <label class="col-md-3 control-label" for="password"></label>
  <div class="col-md-6">
    <input id="password" name="password" placeholder="Ingrese su contraseña" class="form-control input-md" type="password">
    
  </div>
</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn-primary">Ingresar</button>
		</fieldset>
</form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--sign in modal closed-->

</div><!--header row closed-->
</div>

<div class="bg1">
  
<div class="row">

<div class="col-md-7"></div>
<div class="col-md-4 panel">
<!-- sign in form begins -->  
<p>Espacio creado con el fin de apoyar a los aprendices que van a presentar las pruebas, cabe aclarar que los contenidos aquí expuestos son buenas prácticas recolectadas a lo largo de la experiencia y en ningún momento son las preguntas que saldrán en el examen del ICFES.
</p>
  <div align="center">
    <span class="image object">
      <img src="image/pic<?php echo rand(1, 12);?>.jpg" alt="" />
    </span>
  </div>
</div><!--col-md-6 end-->
</div></div>
</div><!--container end-->

<!--Footer start-->
<div style="width:100%;min-height: 100px;position: absolute;top:95%">
<?php
  include_once 'footer.php';
?>
</div>
<!--footer end-->




</body>
</html>
