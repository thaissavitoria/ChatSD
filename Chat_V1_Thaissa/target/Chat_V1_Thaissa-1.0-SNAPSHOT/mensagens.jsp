<%-- 
    Document   : mesnagens
    Created on : 17 de out. de 2024, 07:32:57
    Author     : admlab
--%>
<%@page import="java.io.File" %>
<%@page import="java.io.FileWriter" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%
        if(request.getParameter("btnEnviar")!=null){
            String msg="";
            msg += "<img src=\""+session.getAttribute("Avatar") +"\" width\"40\" height=\"40\">";
            
            msg += "<font size=\"+1 \" color=\""+session.getAttribute("Color") +"\">" + session.getAttribute("NickName") + "</font>";
            
            if(request.getParameter("cbModo").toString().equals("falar")){
                msg +=" Diz... " + request.getParameter("txtMsg");
            } 
            else if(request.getParameter("cbModo").toString().equals("gritar")){
                msg +="<b> Grita... </b> <font size=\"+2\">" + request.getParameter("txtMsg") + "</font>";
            }
            else if(request.getParameter("cbModo").toString().equals("sussurrar")){
                msg +="<i> Sussurra... </i> <font size=\"-2\">" + request.getParameter("txtMsg") + "</font>";
            }
            
            msg +=" ";
            
            if(!request.getParameter("cbEmoji").toString().equals("")){
              msg += "<img src=\""+request.getParameter("cbEmoji") +"\" width\"20\" height=\"20\">";
            }
            
            msg+="<br>";  
        
            
        }
    %>
    <body>
        <form name='frmMensagem' method='post' action='mensagens.jsp'>
            <b>Modo</b>
            <select name='cbModo' id='cbModo'>
                <option value='gritar'><b>GRITAR</b></option>
                <option value='sussurrar'><i>Sussurrar</i></option>
                <option value='falar' selected='true'>Falar</option>
            </select>
            
            <b>Mensagem:</b><input autocomplete='false' type='text' name='txtMsg' style="border:2 px solid black" maxlength="50" size="75"/> <br>
            
            <b>Emoji:</b>
            
            <select name='cbEmoji'>
                <option value='images/coracao.png'>Coração</option>
                <option value='images/confuso.png'>Confuso</option>
                <option value='images/sorriso.png'>Sorriso</option>
                <option value='images/risada.webp'>Risada</option>
            </select>
            
            <input type="submit" name="btnEnviar" value="Enviar">
        </form>
    </body>
</html>
