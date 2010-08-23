<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ include file="../../common/declarations.jspf" %>

<template:area path="maincontent"/>

<c:forEach items="${currentNode.nodes}" var="subchild">
<c:if test="${subchild.name != 'maincontent' and subchild.name != 'navLink' and subchild.primaryNodeTypeName != 'jnt:page'}">
<p>
    <template:module node="${subchild}" template="${moduleMap.subNodesTemplate}" />
</p>
</c:if>
</c:forEach>
<c:if test="${renderContext.editMode}">
    <p>
        <template:module path="*"/>
    </p>
</c:if>