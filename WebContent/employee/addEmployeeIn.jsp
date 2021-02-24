<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ include file='../include/lib.jsp' %>

<div class='container'>
	<%@ include file='../include/header.jsp' %>
	<form action='addEmployeeProc.jsp'>
		<div class='row form-group'>
			<label for='empName' class='col-2 col-form-label'>사원명: </label>
			<div class='col'>
				<input type='text' class='form-control' id='empName' name='empName' required/>
			</div>
		</div>
		<div class='row form-group'>
			<label for='hireDate' class='col-2 col-form-label'>입사일: </label>
			<div class='col'>
				<input type='date' class='form-control' id='hireDate' name='hireDate' required/>
			</div>
		</div>
		<div class='row'>
			<div class='col d-flex justify-content-end'>
				<a href='../main.jsp'>
					<button type='button' class='btn btn-outline-secondary'>Cancel</button>
				</a> &nbsp;
				<button type='submit' class='btn btn-outline-primary'>OK</button>
			</div>
		</div>
	</form>
</div>