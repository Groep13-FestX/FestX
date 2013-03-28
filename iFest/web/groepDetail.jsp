<%-- 
    Document   : groepDetail
    Created on : 28-mrt-2013, 15:27:37
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
            <%
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/groep13_festivals", "local", "local");

                Statement stat = con.createStatement();
                
                ResultSet resultFestivals = stat.executeQuery("select * from Bands where band_id = " + request.getParameter("id") + "");
                
                ResultSetMetaData rsData = resultFestivals.getMetaData();

                while (resultFestivals.next()) {
                    out.print("<legend>" + resultFestivals.getString(2) + "</legend>");
                    for(int i = 3; i <= rsData.getColumnCount(); i++)
                        out.print(resultFestivals.getString(i) + "<br>");
                }
            %>
            </fieldset>
        </div>
    </body>
</html>
