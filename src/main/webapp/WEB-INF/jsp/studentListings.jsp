<!DOCTYPE html>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="baseURL" value="${pageContext.request.localName}"/>

<html lang="en">
<head>
    <title>Students</title>
    <script
            src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <style type="text/css">
        b { margin-left:20px;}
    </style>
</head>
<body>
<label for="school">Select school:</label>
<select id="school" name="school" onchange="selectedSchool(this)">
    <option value="-999">-- All --</option>
    <c:forEach items="${schools}" var="school">
        <option value="${school.schoolId}">${school.schoolName}</option>
    </c:forEach>
</select>

<br/>
<h2>Students</h2>
<ol id="student-list">
    <c:forEach items="${students}" var="student">
        <li class=${student.classEnrollments[0].school.schoolId}>${student.lastName}, ${student.firstName} <b>Class:</b> ${student.classEnrollments[0].course} - ${student.classEnrollments[0].gradeLevel}</li>
    </c:forEach>
</ol>

<form id="form1" method="post" action="">
    <input type="text" name="stateIdText" value="" placeholder="Enter state ID" />
    <br/>
    <input type="text" name="firstNameText" value="" placeholder="Enter first name" />
    <br/>
    <input type="text" name="lastNameText" value="" placeholder="Enter last name" />
    <br/>
    <select id="school2" name="school">
        <option selected="true" disabled="true" >Choose school</option>
        <c:forEach items="${schools}" var="school">
            <option value="${school.schoolId}">${school.schoolName}</option>
        </c:forEach>
    </select>
    <br/>
    <select id="studentClass" name="studentClass">
        <option selected="true" disabled="true" >Choose class</option>
        <c:forEach items="${classes}" var="sclass">
            <option value="${sclass.schoolClassId}">${sclass.course}-${sclass.gradeLevel}</option>
        </c:forEach>
    </select>
    <br/>
    <input type="submit" value="Add Student"></input>
</form>

</body>
<script type="text/javascript">
    $(document).ready(function () {
    });
</script>

<script type="text/javascript">
    function selectedSchool(select){
        if (select.value == '1') {
            $('.1').show();
            $('.2').hide();
            $('.3').hide();
        }
        else if(select.value == '2') {
            $('.2').show();
            $('.1').hide();
            $('.3').hide();
        }
        else if(select.value == '3') {
            $('.3').show();
            $('.1').hide();
            $('.2').hide();
        }
        else{
            $('.1').show();
            $('.2').show();
            $('.3').show();
        }
    }
</script>

<script type="text/javascript">
    function addStudent(select){
        <sql:setDataSource var = "addStudentToDb" driver="org.h2.Driver"
                   url = "jdbc:h2:mem:testdb"
                   user = "sa"  password = ""/>

        <%--<sql:update dataSource = "${addStudentToDb}" var = "result">--%>
        <%--INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME)--%>
        <%--VALUES (112233, 'S112233', 'Ameya', 'Gurjar');--%>
        <%--</sql:update>--%>
    }
</script>

</html>
