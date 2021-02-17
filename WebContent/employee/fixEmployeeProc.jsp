<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='kimyongtae.hr.service.EmployeeServiceImpl' %>
<%@ page import='kimyongtae.hr.domain.Employee' %>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.time.format.DateTimeFormatter' %>
<%@ include file='../include/lib.jsp' %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String empIdStr = request.getParameter("empId");
	int empId = Integer.parseInt(empIdStr);

	String empName = request.getParameter("empName");
	
	String hireDateStr = request.getParameter("hireDate");	
	LocalDate hireDate = LocalDate.parse(hireDateStr, DateTimeFormatter.ISO_DATE);
	
	new EmployeeServiceImpl().fixEmployee(new Employee(empId, empName, hireDate));
%>
<c:redirect url='../main.jsp'/>
	