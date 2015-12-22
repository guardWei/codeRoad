<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获取用户信息</title>
</head>
<body>
  <form action="userController/getUserById" method="post">
         用户id: <input type="text" name="uid"  /> 
           <input type="submit" value="查询" />
  </form>

	姓名: ${user.name }
	</br> 年龄: ${user.age }
	</br> 生日：
	<fmt:formatDate value="${user.birthday }" pattern="yyyy/MM/dd" />
	</br>
	<table border="1">
	<tr><tb>课程id</tb><tb>课程名</tb><tb>任课老师</tb></tr>
		<c:forEach items="${user.uCourses }" var="couser">
           <tr><td>${couser.id }</td><td>${couser.courseName}</td><td>${couser.courseTeacher }</td></tr>
		</c:forEach>
	</table>
</body>
</html>