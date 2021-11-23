
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Zonas</title>
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
        <h2>Albergue de Pinguino</h2>
        <img src="recursos/img/pinguinos.png" alt=""/>
        <p>En este refugio vive una colonia de Pinguinos Magallánicos nacidos en Mundo Marino. En un ambiente que recrea las características de una colonia natural se protege a esta especie categorizada como "casi amenazada".</p>
        <h2>Escuela Eco-Lógica</h2>
        <img src="recursos/img/escuela eco.png" alt=""/>
        <p>Lobos marinos y cuidadores comparten clases y aprenden de manera entretenida lo fácil e importante que es cuidar a la Naturaleza.</p>
        <h2>Expedición Tiburones</h2>
        <img src="recursos/img/tibu.png" alt=""/>
        <p>Como casi todas las especies del mundo éstas también corren peligro en la naturaleza. Estamos convencidos de que el primer paso para cuidar es conocer.</p>
        <h2>Kyboko Nyumba</h2>
        <img src="recursos/img/hipo.png" alt=""/>
        <p>Podrás contemplar de cerca a dos Hipopótamos, además de aprender sobre su especie y cómo ayudar a conservarla.</p>
        <h2>Refugio del Mar</h2>
        <img src="recursos/img/delfin.png" alt=""/>
        <p>Una emotiva presentación protagonizada por delfines de nuestra zona costera llamados Nariz de Botella y una Orca, que junto a sus cuidadores transmiten una enseñanza de amor y respeto mutuo</p>
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
