<%-- 
    Document   : index
    Created on : 16 de out. de 2024, 07:27:25
    Author     : Thaissa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat Versão 1.0</title>
    </head>
    <body>
        <form name='frmlogin' action='sala.jsp' method='get'>
            <center>
                <table border='1' style='border-collapse: collapse; width: 50%;'>
                    <tr>
                        <td colspan="2" bgcolor='tomato' align='center' style='padding: 15px;'> 
                            <font color='white' size='+4'>Login</font>
                        </td>
                    </tr>
                    <tr>
                        <td align='center' style='padding: 10px;'> <b>Nickname:</b> </td>
                        <td style='padding: 5px;'>
                            <input type='text' name='txtNick' size='20' maxlength='20' style='width: 100%; padding: 5px; box-sizing: border-box;'>
                        </td>
                    </tr>
                    <tr>
                        <td align='center' style='padding: 10px;'> <b>Avatar:</b> </td>
                        <td style='padding: 10px;'>
                            <input type='radio' name='radAvatar' checked value='images/avatar1.png'>
                            <img src='images/avatar1.png' width='60' height='60'>
                            <input type='radio' name='radAvatar' value='images/avatar2.png'>
                            <img src='images/avatar2.png' width='60' height='60'>
                            <input type='radio' name='radAvatar' value='images/avatar3.png'>
                            <img src='images/avatar3.png' width='60' height='60'>
                            <input type='radio' name='radAvatar' value='images/avatar4.png'>
                            <img src='images/avatar4.png' width='60' height='60'>
                        </td>
                    </tr>
                    <tr>
                        <td align='center' style='padding: 10px;'> <b>Cor:</b> </td>
                        <td style='padding: 10px;'>
                            <input type='radio' name='radColor' checked value='Navy'>
                            <font color='Navy'>Azul</font>
                            <input type='radio' name='radColor' value='BlueViolet'>
                            <font color='BlueViolet'>Roxo</font>
                            <input type='radio' name='radColor' value='Magenta'>
                            <font color='Magenta'>Rosa</font>
                            <input type='radio' name='radColor' value='LimeGreen'>
                            <font color='LimeGreen'>Verde</font>
                        </td>
                    </tr>
                    <tr style='border: none;'>
                        <td colspan='2' align='center' style='padding: 10px;'>
                            <input type='submit' name='sendButton' value='Entrar' style='padding: 10px 20px; font-size: 16px;'>
                        </td>
                    </tr>
                </table>
            </center>
        </form>
    </body>
</html>
