
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Itinerarios</title>
    </head>
    <body>
        <h1>Mundo Marino</h1>
        <form method="post" action="Controlador">
            <input type="submit" name="accion" value="index" >
            <input type="submit" name="accion" value="login" >
            <input type="submit" name="accion" value ="zona">
            <input type="submit" name="accion" value="itinerarios" >
            <input type="submit" name="accion" value="animales" >
            <input type="submit" name="accion" value="mapa" >
        </form>
        <br>
        <h2>Foto con Lobos</h2>
        <img src="recursos/img/foto con lobos.png" alt=""/>
        <p>¡No dejes de llevarte este hermoso recuerdo! Una foto junto a estos maravillosos animales.</p>
        
        <h2>Expedición Aventura</h2>
        <img src="recursos/img/expedicion aventura.png" alt=""/>
        <p>Te invitamos a vivir una experiencia EXCLUSIVA donde, a bordo de un espectacular camión y guiado por cuidadores, podrás recorrer los recovecos del Safari Terrestre, estar muy cerca de los animales y ¡ALIMENTARLOS!</p>
        
        <h2>Alimentá a los Lobos</h2>
        <img src="recursos/img/alimenta a los lobos.png" alt=""/>
        <p>En Mundo Marino nuestra misión principal es el Bienestar Animal. Y como parte de este plan elaboramos con detalle la dieta de cada uno de los animales que cuidamos. Aprender mediante vivencias es algo único.</p>
        
        <h2>Foto con Delfines</h2>
        <img src="recursos/img/foto delfi.png" alt=""/>
        <p>Junto a un cuidador vas a poder estar cerca de los Delfines y llevarte una increíble foto con ellos.</p>
        
        <h2>Paseo en Tren</h2>
        <img src="recursos/img/paseo en tren.png" alt=""/>
        <p>Un simpático tren te lleva a recorrer el Parque por zonas que no son accesibles en un paseo caminando para el resto del público
El recorrido se acompaña por un relato muy interesante para que conozcas en mayor profundidad este maravilloso Parque.</p>
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
