<%-- 
	Document   : archives
	Created on : Mar 2, 2017, 11:09:08 PM
	Author     : Carl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
		<link rel="icon" href="favicon.ico" type="image/x-icon">
		<script src="js/jquery-3.2.0.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
                <script>
                    $(document).ready(function() {
                        $('#confirmDelete').on('show.bs.modal', function(e) {
                          var id = $(e.relatedTarget).data('id');
                          $(".idhere").html(id);
                          document.getElementById('arcinput').value = id;
                        });
                    });    
                </script>
		<style>
			body { 
				background: url(loginbg.jpg) no-repeat center center fixed; 
				-webkit-background-size: cover;
				-moz-background-size: cover;
				-o-background-size: cover;
				background-size: cover;
				height:100%;
				width:100%;
			}
		</style>		
		<title>Archives</title>
	</head>
	<body>
		
		<s:include value="home.jsp"/>
		<div class="container-fluid">
			<h1 align="center"><font face="roboto">Archives</font></h1>

			<div class=" table table-responsive">
				<table class="table table-bordered table-hover table-inverse table-striped">
					<thead>
						<tr>
							
							<th>#</th>
							<th>Reason</th>
							<th>Owner Name</th>
							<th>Address</th>
							<th>Contact Number</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="#session.archive" var="record">


							<tr>
								
								<td><s:property value="#record.archiveId"/></td>
								<td><s:property value="#record.reason"/></td>
								<td><s:property value="#record.name" /></td>
								<td><s:property value="#record.address" /></td>
								<td><s:property value="#record.contactNumber" /></td>
							</tr>
						</s:iterator>
						<!-INSERT TABLE BODY HERE->


					</tbody>
				</table>
			</div>
		</div>
		<div class="modal fade" id="confirmDelete">
                    <s:form action="deleteArchive">
                        <div class="modal-dialog modal-sm">
                                <div class="modal-content">
                                        <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" >&times;</button>
                                                <h3 align="center" class="modal-title">Permanently Delete?</h3>
                                        </div>
                                        <div class="modal-body">
                                                <p align="center">This record will be removed from the database</p>
                                                <input type="hidden" name="controlInput" id="arcinput" value=""/>
                                        </div>
                                        <div class="modal-footer form-group" >
                                                <div class="row">
                                                    <div class="col-md-6 col-sm-6">
                                                        <center><s:submit type="button" cssClass="btn btn-danger btn-block" value="Delete" /></center>
                                                    </div>
                                                    <div class="col-md-6 col-sm-6">
                                                                    <center><button type="button" class="btn btn-secondary btn-block" data-dismiss="modal">Cancel</button></center>
                                                    </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                    </s:form>
            </div>							
	</body>
</html>
