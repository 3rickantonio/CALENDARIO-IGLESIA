<div class="row">
	<div class="col-md-12">
<div class="btn-group pull-right">
	<a href="" class="btn btn-default"><i class='fa fa-male'></i> Nuevo Ministerio</a>
<div class="btn-group pull-right">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
    <i class="fa fa-download"></i> Descargar <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu">
    <li><a href="">Word 2007 (.docx)</a></li>
  </ul>
</div>
    
</div>
		<h1>Ministerios</h1>
<br>
		<?php

		$users = ProjectData::getAll();
		if(count($users)>0){
			// si hay usuarios
			?>

			<table class="table table-bordered table-hover">
			<thead>
			<th>Nombre</th>
			<th>Opciones</th>
			</thead>
			<?php
			foreach($users as $user){
				?>
				<tr>
				<td><?php echo $user->name." ".$user->lastname; ?></td>
				<td style="width:190px;"><a href="" class="btn btn-default btn-xs">Historial</a> <a href="index.php?view=editproject&id=<?php echo $user->id;?>" class="btn btn-warning btn-xs">Editar</a> <a href="index.php?view=delproject&id=<?php echo $user->id;?>" class="btn btn-danger btn-xs">Eliminar</a></td>
				</tr>
				<?php

			}



		}else{
			echo "<p class='alert alert-danger'>No hay Ministerios</p>";
		}


		?>


	</div>
</div>