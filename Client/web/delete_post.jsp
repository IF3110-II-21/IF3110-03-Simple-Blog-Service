<%-- 
    Document   : delete_post
    Created on : Nov 25, 2014, 1:56:52 PM
    Author     : Gilang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="undeclared.service.Service" %>
<jsp:useBean id="sql" scope="session" class="com.gilang.sql.DBAdapter" />
<jsp:useBean id="user" scope="session" class="com.gilang.beans.User" />

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
        </head>
        <body>
			<%	if(user.getUsername() == null){
					response.setStatus(response.SC_MOVED_TEMPORARILY);
					response.setHeader("Location", "home.jsp");
				}else{
					//sql.deletePost(request.getParameter("post_id"));
					Service.deletePost(Integer.valueOf(request.getParameter("post_id")));
					response.setStatus(response.SC_MOVED_TEMPORARILY);
					response.setHeader("Location", "index.jsp");
				}
			%>
        </body>
    </html>
</f:view>
