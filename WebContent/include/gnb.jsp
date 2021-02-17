<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<style>
.w-24 {
	width: 24%;
}
</style>

<%	
	Object ctxObj = application.getAttribute("ctx");
	String ctx = "";
	
	if(ctxObj != null) ctx = (String)ctxObj;
	else application.setAttribute("ctx", request.getContextPath());
%>

<div class='row m-3'>
	<div class='col'>
		<nav>
			<a class='btn btn-primary w-24' href='${ctx}/main.jsp'>
				<i class='fas fa-align-justify'></i> 목록
			</a>
			<a class='btn btn-success w-24' href='${ctx}/employee/addEmployeeIn.jsp'>
				<i class='fas fa-plus'></i> 추가
			</a>
			<a class='btn btn-info w-24' href='${ctx}/employee/fixEmployeeIn.jsp'>
				<i class='fas fa-edit'></i> 수정
			</a>
			<a class='btn btn-warning w-24' href='${ctx}/employee/delEmployeeIn.jsp'>
				<i class='fas fa-trash-alt'></i> 삭제
			</a>
		</nav>
	</div>
</div>