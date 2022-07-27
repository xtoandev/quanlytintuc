<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<h1>admin</h1>
<c:forEach items="${chude}" var="o" varStatus="loop">
	     
	     <p>${o.maChuDe}</p>
	     <p>${o.tenChuDe}</p>                       
</c:forEach>