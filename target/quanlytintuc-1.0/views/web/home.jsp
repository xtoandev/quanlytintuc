<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<c:forEach items="${baiviet}" var="o" varStatus="loop">
	     <p>${o.maBaiViet}</p>
	     <p>${o.tieuDe}</p>                       
</c:forEach>
