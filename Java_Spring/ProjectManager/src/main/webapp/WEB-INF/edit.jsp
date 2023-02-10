<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Project Manager</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <h1 style="text-align:center;">Edit project.</h1>
    <div>
        <a href="/dashboard">Dashboard</a>
    </div>
    <form:form action="/projects/edit/${project.id}" style="text-align:left;" method="POST" modelAttribute="project">
        <div>
            <form:label path="title">Project Title:</form:label>
            <form:input path="title" value="${project.title}"/>
            <form:errors path="title" class="text-danger"/>
        </div>
        <div>
            <form:label path="description">Project Description:</form:label>
            <form:input path="description" value="${project.description}"/>
            <form:errors path="description" class="text-danger"/>
        </div>
        <div>
            <form:label path="dueDate">Due Date:</form:label>
            <form:input path="dueDate" type="date" value="${project.dueDate}"/>
            <form:errors path="dueDate" class="text-danger"/>
        </div>
        <button>Submit</button>
        </form:form>
</body>
</html>
