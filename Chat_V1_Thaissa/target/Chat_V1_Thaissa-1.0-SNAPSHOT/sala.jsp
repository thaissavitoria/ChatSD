<%-- 
    Document   : sala
    Created on : 16 de out. de 2024, 08:25:33
    Author     : admlab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat</title>
    </head>
    <body>
        <%
            session.setAttribute("NickName", request.getParameter("txtNick"));
            session.setAttribute("Avatar", request.getParameter("radAvatar"));
            session.setAttribute("Color", request.getParameter("radColor"));
        %>   
        <%-- 
        <h1>Variáveis</h1>

        <%
            out.println("Variável txtNick: " + request.getParameter("txtNick")+ "<br>");
            out.println("Variável <b>radAvatar </b><font color='red'>" + request.getParameter("radAvatar") + "</font>");
        %>
        <br>
        <b> Variável radColor: </b>
        <%= request.getParameter("radColor")%> 
        --%>

        <iframe src="topo.jsp" width="100%" height="100px"></iframe>
        <iframe src="conversa.jsp" width="100%" height="700px"></iframe>
        <iframe src="mensagens.jsp" width="100%" height="100px"></iframe>
    </body>
</html>
