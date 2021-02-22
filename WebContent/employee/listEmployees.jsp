<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='kimyongtae.hr.service.EmployeeServiceImpl' %>
<%@ page import='kimyongtae.hr.domain.Employee' %>
<%@ page import='java.util.List' %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	pageContext.setAttribute("empList", new EmployeeServiceImpl().getEmployees());
%>
<div class='row'>
	<div class='col'>
		<table class='table justify-content-around'>
			<thead>
				<tr>
					<th></th>
					<th>사번</th>
					<th>이름</th>
					<th>입사일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test='${empList.size() > 0}'>
						<c:forEach var='emp' items='${empList}'>
							<tr>
								<th></th>
								<th><input type='radio'  required 
										name='empId' value='${emp.empId}'/>
									${emp.empId}</th>
								<td>${emp.empName}</td>
								<td>${emp.hireDate}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan='3' class='text-center'>사원이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>