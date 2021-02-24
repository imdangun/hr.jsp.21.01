<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ include file='../include/lib.jsp' %>

<div class='container'>
	<%@ include file='../include/header.jsp' %>
	<%@ include file='../include/gnb.jsp' %>
	<form action='fixEmployeeProc.jsp'>
		<div class='row mb-3'>
			<div class='col'>
				<div class='row form-group'>
					<label class='col-4 col-form-label'>사원명: </label>
					<div class='col'>
						<input type='text' class='form-control' name='empName' required/>
					</div>
				</div>
			</div>
			<div class='col'>
				<div class='row form-group'>
					<label class='col-4 col-form-label'>입사일: </label>
					<div class='col'>
						<input type='date' class='form-control' name='hireDate' required/>
					</div>
				</div>
			</div>
			<div class='col-1'>
				<button type='submit' class='btn btn-outline-primary'>OK</button>
			</div>		
		</div>
		<jsp:include page='listEmployees.jsp'/>
	</form>
</div>