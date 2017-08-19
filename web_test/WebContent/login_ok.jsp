<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page import= "java.sql.Connection"%>
<%@ page import= "java.sql.DriverManager"%>
<%@ page import= "java.sql.ResultSet"%>
<%@ page import= "java.sql.SQLException"%>
<%@ page import= "java.sql.PreparedStatement"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=session.getId() %>

<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String dbUrl = "jdbc:mysql://localhost:3306/jsp_study";
String dbId ="root";
String dbPwd ="wkgns1324";
Connection con;
PreparedStatement ps;
String result = id + "없는 아아디 입니다.";
session.setAttribute("login", "false");
try {
	Class.forName("org.mariadb.jdbc.Driver");
	con = DriverManager.getConnection(dbUrl,dbId,dbPwd);
	String sql="select * from user where id=?";
	ps = con.prepareStatement(sql);
	ps.setString(1 , id);
	ResultSet rs = ps.executeQuery();
	
	while(rs.next()) {
		if(pwd.equals(rs.getString("password"))){
			result = "로그인 성공";
			session.setAttribute("login" , "true");
			session.setAttribute("id" , id);
		} else{
			result = "실패";
		}
	}
	
} catch (ClassNotFoundException e ) {
	e.printStackTrace();
} catch (SQLException e) {
	e.printStackTrace();
} 

boolean login = false;
%>


<script>
alert("<%=result %>");
location.href="/login.jsp";
</script>
</body>
</html>