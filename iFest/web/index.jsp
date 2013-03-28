<%-- 
    Document   : index
    Created on : 21-mrt-2013, 13:41:35
    Author     : HeusdensJens
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fest-X-HOME</title>
        <link rel="stylesheet" type="text/css" href="stijl.css">
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <script src="jquery.js" type="text/javascript"></script>
        <script src="intro.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="black">
            <div id="white">
                <div id="valid">
                    <h1>REGISTREER</h1>
                    <form method="get" action="test.jsp">
                    <input type="text" name="text" id="Rvoornaam" required placeholder="voornaam"/><br>
                    <input type="text" name="text" id="Rachternaam" required placeholder="naam"/><br>
                    <input type="text" name="text" id="Remail" required placeholder="email"/><br>
                    <input type="text" name="text" id="Rgebruik" required placeholder="gebruikersnaam"/><br>
                    <input type="password" name="text" id="Rpasw" required placeholder="wachtwoord"/><br>
                    <input type="password" name="text" id="Rpasw" required placeholder="bevestig wachtwoord"/><br>
                    <br>
                    <input type="submit" name="bregistreer" id="bregistreer" value="registreer"/>
                    <input type="button" name="cancel" id="cancel" value="terug"/>
                    </form>
                </div>
                
            </div>
                 
            
        </div>
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
        <div class="menu">
            <div id="menuRuimte">
            <a href="festivals.jsp"><div class="block">Festivals</div></a>
            <a href="groepen.jsp"><div class="block">Groepen</div></a>
            <a href="tickets.jsp"><div class="block">Tickets</div></a>
            </div>
        </div>
        <div id="form">
        <form action="" method="get">
        <input type="text" name="invoer" id="invoer" required placeholder="zoekterm...."/>
        <input type="submit" name="zoeken" id="zoeken" value="Zoeken"/>
        </form>
        </div>
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