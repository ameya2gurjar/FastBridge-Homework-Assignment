<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="baseURL" value="${pageContext.request.localName}"/>

<html lang="en">
<head>
    <title>Students</title>
    <script
            src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
        <li class=${student.classEnrollments[0].school.schoolId}>${student.lastName}, ${student.firstName} Class: ${student.classEnrollments[0].course} - ${student.classEnrollments[0].gradeLevel}</li>
    </c:forEach>
</ol>

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
        }
        else if(select.value == '2') {
            $('.2').show();
            $('.1').hide();
        }
        else{
            $('.1').show();
            $('.2').show();
        }
    }
</script>

</html>
