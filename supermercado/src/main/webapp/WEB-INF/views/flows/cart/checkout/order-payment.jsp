<%@include file="../../flows-shared/header.jsp"%>
<div class="container">

	<div class="row">
		<!--  To display all the goods -->
		<div class="col-md-6">

			<div class="row">
				<c:forEach items="${checkoutModel.cartLines}" var="cartLine">
					<div class="col-xs-12">

						<div>
							<h3>${cartLine.product.name}</h3>
							<hr />
							<h4>Cantidad ${cartLine.productCount}</h4>
							<h5>Precio de compra - Q.; ${cartLine.buyingPrice}/-</h5>
						</div>
						<hr />
						<div class="text-right">
							<h3>Grand Total - Q.; ${cartLine.total}/-</h3>
						</div>
					</div>
				</c:forEach>
			</div>


		</div>

		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Detalles de pago</h3>
				</div>
				<div class="panel-body">
					<form role="form">
						<div class="form-group">
							<label for="Numero de tarjeta"> Numero de tarjeta</label>
							<div class="input-group">
								<input type="text" class="form-control" id="cardNumber"
									placeholder="Numero de tarjeta valido" required autofocus /> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-lock"></span></span>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-7 col-md-7">
								<div class="form-group">
									<label for="expityMonth">fecha de expiracion</label> <br />
									<div class="col-xs-6 col-lg-6 pl-ziro">
										<input type="text" class="form-control" id="expityMonth"
											placeholder="MM" required />
									</div>
									<div class="col-xs-6 col-lg-6 pl-ziro">
										<input type="text" class="form-control" id="expityYear"
											placeholder="YY" required />
									</div>
								</div>
							</div>
							<div class="col-xs-5 col-md-5 pull-right">
								<div class="form-group">
									<label for="cvCode"> Codigo CV</label> <input type="password"
										class="form-control" id="cvCode" placeholder="CV" required />
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<ul class="nav nav-pills nav-stacked">
				<li class="active"><a href="#"><span
						class="badge pull-right"> Q;
							${checkoutModel.checkoutTotal}/-</span> Pago Final</a></li>
			</ul>
			<br /> <a href="${flowExecutionUrl}&_eventId_pay"
				class="btn btn-success btn-lg btn-block" role="button">Pagar</a>

		</div>

	</div>
</div>
<%@include file="../../flows-shared/footer.jsp"%>