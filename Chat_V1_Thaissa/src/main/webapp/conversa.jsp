<%-- 
    Document   : conversa
    Created on : 17 de out. de 2024, 07:32:48
    Author     : admlab
--%>

<%@page import="pacote.RmiWebInterface" %>
<%@page import="java.rmi.Naming" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
               RmiWebInterface objRmi=(RmiWebInterface)Naming.lookup("rmi://127.0.0.1:6666/ServidorWebChat");
               
               out.print(objRmi.recuperaMsg());
            }catch(Exception e){
                out.print("Erro ao recuperar mensagens: " + e.getMessage());
                e.printStackTrace();
            }
        %>
    </body>
</html>
