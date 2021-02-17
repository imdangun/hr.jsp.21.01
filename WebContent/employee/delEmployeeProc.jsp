<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='kimyongtae.hr.service.EmployeeServiceImpl' %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String empId = request.getParameter("empId");
	new EmployeeServiceImpl().delEmployee(Integer.parseInt(empId));
%>
<c:redirect url='../main.jsp'/>