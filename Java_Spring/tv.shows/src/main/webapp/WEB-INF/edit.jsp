<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>TV Shows</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <h1 style="text-align:center;"><c:out value="${show.title}"></c:out></h1>
    <form:form action="/updateShow/${show.id}" style="text-align:left;" method="POST" modelAttribute="show">
        <div>
            <form:label path="title">Title:</form:label>
            <form:input path="title" value="${show.title}"/>
            <form:errors path="title" class="text-danger"/>
        </div>
        <div>
            <form:label path="network">Network:</form:label>
            <form:input path="network" value="${show.network}"/>
            <form:errors path="network" class="text-danger"/>
        </div>
        <div>
            <form:label path="description">Description:</form:label>
            <form:input path="description" type="textarea" value="${show.description}"/>
            <form:errors path="description" class="text-danger"/>
        </div>
        <button>Submit</button>
    </form:form>
    <button><a href="/shows" style="text-align:right;">Cancel</a></button>
    <button><a  href="/shows/delete/${show.id}"> Delete Show</a></button>
</body>
</html>
