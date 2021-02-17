<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ include file='../include/lib.jsp'%>

<div class='container'>
	<%@ include file='../include/header.jsp'%>
	<%@ include file='../include/gnb.jsp'%>
	<form action='delEmployeeProc.jsp'>
		<div class='row'>
			<div class='col d-flex justify-content-end'>
				<button type='submit' class='btn btn-outline-primary'>OK</button>
			</div>
		</div>		
		<jsp:include page='listEmployees.jsp'/>		
	</form>
</div>