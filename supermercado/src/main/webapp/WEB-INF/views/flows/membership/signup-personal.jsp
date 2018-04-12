<%@include file="../flows-shared/header.jsp" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>			
	<div class="container">
		
		
		<div class="row">
			
			<div class="col-md-6 col-md-offset-3">
				
				<div class="panel panel-primary">
				
					<div class="panel-heading">
						<h4>Ingreso - Personal</h4>
					</div>
					
					<div class="panel-body">
										
						<sf:form
							method="POST"
							modelAttribute="user"
							class="form-horizontal"
							id="registerForm"
						>
						
							
							<div class="form-group">
								<label class="control-label col-md-4">Primer nombre</label>
								<div class="col-md-8">
									<sf:input type="text" path="firstName" class="form-control"
										placeholder="Primer Nombre" />
									<sf:errors path="firstName" cssClass="help-block" element="em"/> 
								</div>
							</div>


							<div class="form-group">
								<label class="control-label col-md-4">Apellido</label>
								<div class="col-md-8">
									<sf:input type="text" path="lastName" class="form-control"
										placeholder="Apellido" />
									<sf:errors path="lastName" cssClass="help-block" element="em"/> 
								</div>
							</div>
						
							<div class="form-group">
								<label class="control-label col-md-4">Correo</label>
								<div class="col-md-8">
									<sf:input type="text" path="email" class="form-control"
										placeholder="abc@zyx.com" />
									<sf:errors path="email" cssClass="help-block" element="em"/> 									
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4">Numero de contacto</label>
								<div class="col-md-8">
									<sf:input type="text" path="contactNumber" class="form-control"
										placeholder="XXXXXXXXXX" maxlength="10" />
									<sf:errors path="contactNumber" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4">Contrase�a</label>
								<div class="col-md-8">
									<sf:input type="password" path="password" class="form-control"
										placeholder="Contrase�a" />
									<sf:errors path="password" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4">Confirmar contrase�a</label>
								<div class="col-md-8">
									<sf:input type="password" path="confirmPassword" class="form-control"
										placeholder="Reescriba contrase�a" />
									<sf:errors path="confirmPassword" cssClass="help-block" element="em"/>										 
								</div>
							</div>
							
	<div class="form-group">
		<label class="control-label col-md-4">Seleccione un rol</label>
		<div class="col-md-8">
			<label class="radio-inline">
				<sf:radiobutton path="role" value="USER" checked="checked"/> Usuario 				
			</label>
			<label class="radio-inline">
				<sf:radiobutton path="role" value="SUPPLIER"/> Proveedor
			</label>
		</div>
	</div>							

							<div class="form-group">
								<div class="col-md-offset-4 col-md-8">
									<button type="submit" name="_eventId_billing" class="btn btn-primary">
										Nueva - factura <span class="glyphicon glyphicon-chevron-right"></span>
									</button>																	 
								</div>
							</div>
						
						
						</sf:form>					
					
					
					</div>
				
				
				</div>
			
			
			</div>
		
		
		</div>
		
		
	</div>

<%@include file="../flows-shared/footer.jsp" %>			
