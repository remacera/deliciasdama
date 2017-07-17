<!-- Comandos PHP -->
<?php
//Conexão com o banco de dados MYSQL
	$link = mysqli_connect('localhost', 'root', 'seven2015', 'painel');
	if (mysqli_connect_errno()) {
	printf("Connect failed: %s\n", mysqli_connect_error());
	exit();
	}
	//Lista de Elogios MYSQL
	$p = (isset($_GET['p'])) ? (int)$_GET['p'] : 1;
$qnt = 4;
$inicio = ($p*$qnt) - $qnt;
	
	$select = mysqli_query($link, "SELECT * FROM elogio ORDER BY mural DESC LIMIT $inicio, $qnt");
	$elogio3 = Array();
	while ($rows = mysqli_fetch_array($select)){
		$check = $rows['mural'];
		if ($check == 1){$checked = "checked";}
		else{$checked = "";}
		$elogio3 [] = "<tr>"."<td>"."<div class='switch'>"."<label>"."<input disabled type='checkbox' $checked >"."<span class='lever'>"."</span>"."</label>"."</div>"."</td>"."<td id = 'empresa'>".($rows['empresa'])."</td>"."<td>".($rows['cliente'])."</td>"."<td>".($rows['resposta'])."</td>"."<td>".($rows['nota'])."</td>"."<td>".($rows['colaborador'])."</td>"."<td><a href='admin.php?pagina=php/updateelogio.php&id=".($rows['id'])."&empresa=".($rows['empresa'])."&usuario=".($rows['cliente'])."&resposta=".($rows['resposta'])."&colaborador=".($rows['colaborador'])."&mural=".($rows['mural'])."&nota=".($rows['nota'])."' class='btn-floating modal-trigger light-green tooltipped' data-position='top' data-delay='50' data-tooltip='Editar'><i class='material-icons'>mode_edit</i></a></td>"."</tr>";
	}
	
	//Paginação Elogios
	$sql_select_all = "SELECT empresa, cliente, colaborador, resposta, mural FROM elogio";
	$sql_query_all = mysqli_query($link, $sql_select_all);
	$total_registros = mysqli_num_rows($sql_query_all);
	$pags = ceil($total_registros/$qnt);
	$max_links = 5;
	$anterior  = (($p - 1) == 0) ? 1 : $p - 1;
	$posterior = (($p + 1) >= $pags) ? $pags : $p + 1;
	
?>
<!-- Container -->
<div class="row">
	<div class="col s12 m12 l12 pink-text"><h2>Pessoas</h2></div>
	<div class="col s12 m12 l12">
		<div class="card">
			<div class="card-content pink-text">
				
					<div class="col s12 m12 l2 center botao" style="margin-top:35px;">
						<a href='php/deleteelogio.php' class="btn-floating btn-large waves-effect waves-light light-green tooltipped" data-position="top" data-delay="50" data-tooltip="Novo Mês"><i class="material-icons">sync</i></a>
					</div>
					<div class="col s112 m12 l12 center">
						<div class="card-panel" style="height:380px; overflow-y:auto;">
							<table class="striped bordered table-action" id="table">
								<thead>
									<tr>
										<th data-field="escolha"></th>
										<th data-field="empresa"><b>Empresa</b></th>
										<th data-field="usuario"><b>Usuário</b></th>
										<th data-field="resposta"><b>Resposta</b></th>
										<th data-field="nota"><b>Nota</b></th>
										<th data-field="colaborador"><b>Colaborador</b></th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($elogio3 as $i => $value) {echo $elogio3[$i];} ?>
								</tbody>
							</table>
						</div>
					</div>

				<div class="col s12 m12 l12 center" style="margin-top: -35px">
					<ul class="pagination center">
						<?php
							echo "<li class='waves-effect'><a href=admin.php?pagina=php/elogioadmin.php&p=$anterior><i class='material-icons'>chevron_left</i></a></li>";
							for($i = $p-$max_links; $i <= $p-1; $i++){if($i > 0){echo "<li class='waves-effect'><a href=admin.php?pagina=php/elogioadmin.php&p=$i> $i </a></li>";}};
							echo "<li class='active'><a href=admin.php?pagina=php/elogioadmin.php?p=$p>$p</a></li>";
							for($i = $p+1; $i < $p+$max_links; $i++){if($i <= $pags) {echo "<li class='waves-effect'><a href=admin.php?pagina=php/elogioadmin.php&p=$i>$i</a></li>";}};
							echo "<li class='waves-effect'><a href=admin.php?pagina=php/elogioadmin.php&p=$posterior><i class='material-icons'>chevron_right</i></a></li>";
						?>
					</ul>
				</div>
				<?php if(ISSET($_GET['delete']) && $_GET['delete'] == 'ERRODELETE'){$errodelete="Falha ao inserir os novos registros do Mês!!!";} ?>
				<?php if(ISSET($errodelete)){?> <style> .toast{float:none; background-color: #F44336;} </style> <script> Materialize.toast('<?=$errodelete?>', 2300, 'rounded'); </script> <?php } ?>
				<?php if(ISSET($_GET['delete']) && $_GET['delete'] == 'SUCESSODELETE'){$sucessodelete="Inseridos os novos registros do Mês com sucesso!!!";} ?>
				<?php if(ISSET($sucessodelete)){?> <style> .toast{float:none; background-color: #8BC34A;} </style> <script> Materialize.toast('<?=$sucessodelete?>', 2300, 'rounded'); </script> <?php } ?>
				<?php if(ISSET($_GET['update']) && $_GET['update'] == 'ERROUPDATE'){$erroupdate="Falha ao alterar o elogio!!!";} ?>
				<?php if(ISSET($erroupdate)){?> <style> .toast{float:none; background-color: #F44336;} </style> <script> Materialize.toast('<?=$erroupdate?>', 2300, 'rounded'); </script> <?php } ?>
				<?php if(ISSET($_GET['update']) && $_GET['update'] == 'SUCESSOUPDATE'){$sucessoupdate="Alterado o elogio com sucesso!!!";} ?>
				<?php if(ISSET($sucessoupdate)){?> <style> .toast{float:none; background-color: #8BC34A;} </style> <script> Materialize.toast('<?=$sucessoupdate?>', 2300, 'rounded'); </script> <?php } ?>
				<script>$(document).ready(function(){$('.tooltipped').tooltip({delay: 50});});</script>
			</div>
		</div>
	</div>
	
</div>