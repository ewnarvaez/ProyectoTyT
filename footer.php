<!--Footer start-->
<div class="row footer">
<div class="col-md-3 box">
<a href="http://shrtco.de/XcCdsr" target="_blank">Material extra</a>
</div>
<div class="col-md-3 box">
<a href="#" data-toggle="modal" data-target="#developers">Team</a>
</div>
<div class="col-md-3 box">
<a href="feedback.php">Observaciones</a></div>
<div class="col-md-3 box">
<a href="#" data-toggle="modal" data-target="#login">.</a></div>
</div>

<!-- Modal For Developers-->
<div class="modal fade title1" id="developers">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" style="font-family:'typo' "><span style="color:orange">Team</span></h4>
      </div>
	  
      <div class="modal-body">
        <p>
		<div class="row">
		<div class="col-md-7">
		 <img src="image/avatar.png
     " width=350  alt="SENNOVA" class="img-rounded">
		 </div>
		 <div class="col-md-5">
     Pre TyT Quindío una propuesta regional.
		<h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">SENNOVA - Quindío</h4>
		<h4 style="font-family:'typo' ">Fabrica de Software e-qüid</h4>
		<h4 style="font-family:'typo' ">Idea original de <a href="https://www.configuroweb.com/acerca-de-mi/" style="color:#202020; font-family:'typo' ; font-size:18px" title="Visitar...">Mauricio Sevilla Britto</a></h4></div></div>
		</p>
      </div>
    
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--Modal for admin login-->
	 <div class="modal fade" id="login">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"><span style="color:orange;font-family:'typo' ">Ingresar</span></h4>
      </div>
      <div class="modal-body title1">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form role="form" method="post" action="admin.php?q=index.php">
<div class="form-group">
<input type="text" name="uname" maxlength="21"  placeholder="Usuario Admin" class="form-control"/> 
</div>
<div class="form-group">
<input type="password" name="password" maxlength="15" placeholder="Contraseña Admin" class="form-control"/>
</div>
<div class="form-group" align="center">
<input type="submit" name="login" value="Ingresar" class="btn btn-primary" />
</div>
</form>
</div><div class="col-md-3"></div></div>
      </div>
      <!--<div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>-->
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--footer end-->
