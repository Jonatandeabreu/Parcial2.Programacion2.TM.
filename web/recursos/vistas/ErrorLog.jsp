


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Iniciar sesion</title>
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
        <br>
        <br>
        <div>
            <form method="post" action="Controlador">
                <div>
                    <img src="recursos/img/team_people_man_woman_group_icon_193939.png" height="80" width="80"/>
                    <p><strong>Sistema de Login</strong></p>
                    <p><strong>Datos incorrectos</strong></p>
                </div>
                <div>
                    <label><strong>Nombre:</strong></label>
                    <input type="text" name="txtnombre" placeholder="Ingresar nombre" >                   
                </div>
                <div>
                    <label><strong>Contraseña:</strong></label>
                    <input type="password" name="txtpas" placeholder="Ingrese contraseña">
                </div>
                <input type="hidden" name="accion" value="ingresar" >
                <input type="submit" value ="Ingrese">

            </form>
        </div>
        <br>
        <br>
        <footer>
            <form method="post" action="Controlador">
                <input type="submit" name="accion" value="index" >
                <input type="submit" name="accion" value="login" >
                <input type="submit" name="accion" value ="zona">
                <input type="submit" name="accion" value="itinerarios" >
                <input type="submit" name="accion" value="animales" >
                <input type="submit" name="accion" value="mapa" >
            </form>
        </footer>

    </body>
</html>

