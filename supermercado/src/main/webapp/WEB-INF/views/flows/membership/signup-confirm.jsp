<%@include file="../flows-shared/header.jsp" %>
<div class="container">
	
	<div class="row">
	
		<div class="col-sm-6">
	
			<div class="panel panel-primary">
				
				<div class="panel-heading">
					<h4>Datos personales</h4>
				</div>
			
				<div class="panel-body">
					<div class="text-center">
						<h3>Nombre : <strong>${registerModel.user.firstName} ${registerModel.user.lastName}</strong></h3>
						<h4>Correo : <strong>${registerModel.user.email}</strong></h4>
						<h4>Contacto : <strong>${registerModel.user.contactNumber}</strong></h4>
						<h4>Rol : <strong>${registerModel.user.role}</strong></h4>
						<p>
							<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary">Editar</a>
						</p>
					</div>
				</div>
			
			</div>
					
		
		</div>
		
		<div class="col-sm-6">
		
			<div class="panel panel-primary">
				
				<div class="panel-heading">
					<h4>Direccion de facturacion</h4>
				</div>
			
				<div class="panel-body">
					<div class="text-center">
						<p>${registerModel.billing.addressLineOne}, </p>
						<p>${registerModel.billing.addressLineTwo}, </p>
						<p>${registerModel.billing.city} -  ${registerModel.billing.postalCode}, </p>
						<p>${registerModel.billing.state}</p>
						<p>${registerModel.billing.country}</p>
						<p>
							<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary">Editar</a>
						</p>
					</div>
				</div>
			
			</div>
		
		</div>
	
	</div>
	
	<div class="row">
		
		<div class="col-sm-4 col-sm-offset-4">
			
			<div class="text-center">
				
				<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-lg btn-primary">Confirmar</a>
				
			</div>
			
		</div>
		
	</div>

</div>
<%@include file="../flows-shared/footer.jsp" %>