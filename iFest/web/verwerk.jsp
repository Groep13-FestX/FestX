<%-- 
    Document   : verwerk
    Created on : 28-mrt-2013, 14:30:11
    Author     : cedric
--%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fest-X</title>
        <link rel="stylesheet" type="text/css" href="stijl.css">
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <script src="jquery.js" type="text/javascript"></script>
        <script src="intro.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="inhoud">
            <a href="index.jsp"><img id="logohome" src="images/FestX.png" alt="logo" title="logo"/></a>
            <div class="login">
                <input type="button" name="aanmelden" id="aanmelden" value="aanmelden"/><br>
                <div id="uitleg">
                    <input type="text" required placeholder="Gebruikersnaam"/><br>
                    <input type="password" required placeholder="Wachtwoord"/><br>
                    <input type="submit" id="valideer" value="aanmelden"/>
                </div>
                <input type="button" name="registreer" id="registreer" value="registreren"/>

            </div>
            <fieldset>
                <legend>Groepen</legend>
            <%
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/groep13_festivals", "local", "local");

                Statement stat = con.createStatement();

                ResultSet result = stat.executeQuery("select * from Bands where band_naam like '%" + request.getParameter("invoer") + "%'");

                while (result.next()) {
                    out.print("<a href='groepDetail.jsp?id=" + result.getString(1) + "'>" + result.getString(2) + "</a><br>");
                }
            %>
            </fieldset>
            <fieldset>
                <legend>Festivals</legend>
            <%
                ResultSet resultFestivals = stat.executeQuery("select * from Festivals where fest_naam like '%" + request.getParameter("invoer") + "%'");

                while (resultFestivals.next()) {
                    out.print(resultFestivals.getString(2) + "<br>");
                }
            %>
            </fieldset>
        </div>
    </body>
</html>
<script>
    $('#registreer').click(function(){
   $('#black').show(); 
});
    $('#cancel').click(function(){
   $('#black').hide(); 
});
  $('#aanmelden').click(function () {  
  if($('#uitleg').is(":visible")){
        $(this).css("background-color","rgba(0, 0, 204, 0.4)");
        $(this).css("color","rgba(255, 255, 255, 1)");
        
        }else{
        $(this).css("background-color","rgba(234, 255, 54, 0.6)");
        $(this).css("color","rgba(0, 0, 0, 1)");
  }
  $("#uitleg").slideToggle(400);
  });
</script>
