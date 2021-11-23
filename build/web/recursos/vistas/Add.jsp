<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Agregar persona</title>
    </head>
    <body>
        <div>
            <h1>Agregar persona</h1> 
            <form method="post" action="Controlador">
                Nombre:<br>
                <input type="text" name="txtnombre"><br>
                Direccion:<br>
                <input type="text" name="txtdireccion"><br>
                Telefono:<br>
                <input type="text" name="txttlf"><br>
                Fecha:<br>
                <input type="date" name="txtfecha"><br>
                Cargo:<br>
                <select name="txtcargo">
                    <option value="Guia">Guia</option>
                    <option value="Cuidador">Cuidador</option>
                </select>
                <br>
                Z/I a cargo:<br>
                <select name="txtz_i">
                    <option value="Foto con Lobos">Foto con Lobos</option>
                    <option value="Expedición Aventura">Expedición Aventura</option>
                    <option value="Alimentá a los Lobos">Alimentá a los Lobos</option>
                    <option value="Foto con Delfines">Foto con Delfines</option>
                    <option value="Paseo en Tren">Paseo en Tren</option>
                    <option value="Albergue de Pinguino">Albergue de Pinguino</option>
                    <option value="Escuela Eco-Lógica">Escuela Eco-Lógica</option>
                    <option value="Expedición Tiburones">Expedición Tiburones</option>
                    <option value="Kyboko Nyumba">Kyboko Nyumba</option>
                    <option value="Refugio del Mar">Refugio del Mar</option>
                </select>
                <br>
                <input type="submit" name="accion" value="agregar">
                <div>
                <input type="submit" name="accion" value="atras" >
                </div>
            </form>
        </div>
    </body>
</html>

