<%-- 
    Document   : conversa
    Created on : 17 de out. de 2024, 07:32:48
    Author     : admlab
--%>

<%@page import="java.io.File" %>
<%@page import="java.io.FileReader" %>
<%@page import="java.io.BufferedReader" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            File arquivo = new File("C:\\Dados\\arquivo.txt");
            FileReader leitor = new FileReader(arquivo);
            BufferedReader buffer = new BufferedReader(leitor);
            
            while(buffer.ready()){
                out.print(buffer.readLine());
            }
            
            leitor.close();
        %>
    </body>
</html>
