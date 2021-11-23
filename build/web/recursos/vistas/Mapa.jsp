

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Mapa</title>
    </head>
    
    <body>
        <form method="post" action="Controlador">
            <input type="submit" name="accion" value="index" >
            <input type="submit" name="accion" value="login" >
            <input type="submit" name="accion" value ="zona">
            <input type="submit" name="accion" value="itinerarios" >
            <input type="submit" name="accion" value="animales" >
            <input type="submit" name="accion" value="mapa" >
        </form>
        <h1><strong>Mapa del lugar</strong></h1>
        <br>
        <br>
        <img src="recursos/img/plano.jpg" height="500" width="500"/>
        <br>
        <br>
        <form method="post" action="Controlador">
            <input type="submit" name="accion" value="index" >
            <input type="submit" name="accion" value="login" >
            <input type="submit" name="accion" value ="zona">
            <input type="submit" name="accion" value="itinerarios" >
            <input type="submit" name="accion" value="animales" >
            <input type="submit" name="accion" value="mapa" >
        </form>
    </body>
</html>
