<%-- 
	Document   : index
	Created on : 01 31, 17, 1:57:06 PM
	Author     : Aspire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>


<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
		<link rel="icon" href="favicon.ico" type="image/x-icon">

		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<title>RADTECH PARS</title>
		<style>
			body { 
				background: url(loginUp.png) no-repeat center center fixed; 
				-webkit-background-size: cover;
				-moz-background-size: cover;
				-o-background-size: cover;
				background-size: cover;
				
			}
		</style>
                <script>
                    var tempo = '${tempPass}';
                    if(tempo !== ''){
                        alert("Temporary password is set to\n\
            " + tempo + "\n\
            Record carefully before closing this window\n\ Password is case Sensitive!");
                    }
                </script>
	</head>
	<body>
		<div class="container">



			<div class="row">
				<div class="col col-md-9">
					<%--
					<br><br><br><br>
					<font face="Roboto" size="56" color="gold">
						<strong>
						<p>Animal Station And Veterinary Clinic</p>
						<p>by RadTech</p>
						</strong>
					</font>
					--%>
				</div>
				<div class="col col-md-3">
					<br><br><br><br>

					<div class="panel panel-default">

						<div class="panel-heading"><center><b>Enter login information below</b></center></div>
						<div class="panel-body">
							<center>
								<s:form action="login" theme="bootstrap" cssClass="form">

                                                                    <s:fielderror/>
								<div class="row">	
									<div class="form-group">
										<label for="username"></label>
										<s:textfield name="username" placeholder="Username" class="form-control" />
									</div>
								</div>
								<div class="row">	
									<div class="form-group">
										<label for="password"></label>
										<s:password name="password" placeholder="Password" class="form-control" />
										<s:actionerror/>
									</div>
										.
								</div>	
									<s:submit cssClass="btn btn-primary btn-block" value="Submit" />
								</s:form>
								<button type="button" class="btn btn-secondary btn-block" data-toggle="modal" data-target="#forgotPass" >Forgot password?</button>
							</center>
								<!end of panel body->
						</div>                  <!end of panel->                

					</div>



				</div>
			</div>

	</div>
	<%--
	<div class="container-fluid">
		
		<div style="background:black;position:fixed;bottom:0;height:auto;margin-top:40px;width:100%;text-align:center"><font color="white">Copyright © 2017 by Radian Technologies</font></div>
		
	</div>
	--%>
		<div class="modal fade" id="forgotPass">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">

					<center>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title">Forgot Password</h3>
					</div>
					<s:form action="checkUser" theme="bootstrap" cssClass="form" method="POST">

						<div class="modal-body">
							<div class="form-group">
								<s:textfield label="Username" name="username" class="form-control" />
							</div>


							<div class="modal-footer form-group" >

								<s:submit cssClass="btn btn-primary btn-block" value="Submit" />

							</div>
						</div>
					</s:form>
					</center>
				</div>
			</div>
		</div>


	</body>
</html>
