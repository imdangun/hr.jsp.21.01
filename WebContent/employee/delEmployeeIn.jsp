<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ include file='../include/lib.jsp'%>

<div class='container'>
	<%@ include file='../include/header.jsp'%>
	<%@ include file='../include/gnb.jsp'%>
	<form action='delEmployeeProc.jsp'>
		<div class='row'>
			<div class='col d-flex justify-content-end'>
				<button type='button' class='btn btn-outline-primary'
					data-toggle='modal' data-target='#delModal'>OK</button>
			</div>
		</div>	
			
		<jsp:include page='listEmployees.jsp'/>	
		
		<div id='delModal' class='modal fade' tabindex='-1'>
			<div class='modal-dialog'>
				<div class='modal-content'>
					<div class='modal-header'>			
						<button type='button' class='close' data-dismiss='modal'>
							<span>&times;</span>
						</button>
					</div>
					<div class='modal-body'>
						<p>사원을 삭제하시겠습니까?</p>
					</div>
					<div class='modal-footer'>
						<button type='button' class='btn btn-secondary' data-dismiss='modal'>아니오</button>
						<button type='submit' class='btn btn-primary'>예</button>
					</div>
				</div>
			</div>
		</div>	
	</form>
</div>

