<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="row"><!-- Base de la zona del contenido sector blanco -->
    <div class="col s12 m3"><!-- Zona lateral izquerda -->
        <div class="row">
            <div class="row">
                <div class="col s12">
                    <div class="card-panel teal white-text z-depth-4">
                        <div class="row">
                            <h5>Rentar Ahora!</h5>
                            <g:form action="index" method="get" class="col s12">
                                <div class="input-field col s12">
                                    <select name="tipo">
                                        <option value="" disabled selected>Elija opcion</option>
                                        <g:each var="t" in="${tipovehiculo}">
                                            <option value="${t.id}">${t.nombre}</option>
                                        </g:each>
                                    </select>
                                    <label class="white-text">Tipo Vehiculo</label>
                                </div>
                                <div class="input-field col s12">
                                    <select name="sucursal">
                                        <option value="" disabled selected>Elija opcion</option>
                                        <g:each var="s" in="${sucursal}">
                                            <option value="${s.id}">${s.region}</option>
                                        </g:each>
                                    </select>
                                    <label class="white-text">Arriendo de movil en</label>
                                </div>
                                <div class="input-field col s12">
                                    <input type="date" name="fecharetiro" class="datepicker">
                                    <label class="white-text" >Fecha de retiro</label>
                                </div>
                                <div class="input-field col s12">
                                    <input type="date" name="fechadevolucion" class="datepicker">
                                    <label class="white-text">Fecha de devolucion</label>
                                </div>
                                <div class="input-field col s12 center-align">
                                    <g:submitButton  class="waves-effect waves-light btn tooltipped" data-position="right" name="buscar" value="busqueda"></g:submitButton>
                                </div>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <div class="card-panel teal z-depth-4">
                        <span class="white-text">
                            <span class="card-title">Card Title</span>
                            Environment: ${grails.util.Environment.current.name}<br>
                            App profile: ${grailsApplication.config.grails?.profile}<br>
                            Grails version: <g:meta name="info.app.grailsVersion"/><br>
                            Groovy version: ${GroovySystem.getVersion()}<br>
                            JVM version: ${System.getProperty('java.version')}<br>
                            Reloading active: ${grails.util.Environment.reloadingAgentEnabled}<br><br>
                            <a class="btn tooltipped" data-position="right" data-tooltip="Esto prueba un mensaje de informacion de prueba" onclick="Materialize.toast('Se esta incluyendo la funciones de mensajes', 5000,'')">Test de mesajes</a>
                            <br></br>
                            <!-- Modal Trigger -->
                            <a class="tooltipped waves-effect waves-light btn" data-position="right" data-tooltip="Abre un modal" href="#modal1">Test Modal</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="slider card-panel z-depth-0 col s12 m9"><!-- Contenido derecho -->
        <ul class="slides">
            <li>
                <img src="http://cdn01.ib.infobae.com/adjuntos/162/imagenes/014/478/0014478089.jpg"> <!-- random image -->
                <div class="caption center-align">
                    <h3>This is our big Tagline!</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                <a class="waves-effect waves-light btn">Ver Oferta</a>
                </div>
            </li>
            <li>
                <img src="http://cdn01.ib.infobae.com/adjuntos/162/imagenes/014/478/0014478078.jpg?0000-00-00-00-00-00"> <!-- random image -->
                <div class="caption left-align">
                    <h3>Left Aligned Caption</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                <a class="waves-effect waves-light btn">Ver Oferta</a>
                </div>
            </li>
            <li>
                <img src="http://cdn01.ib.infobae.com/adjuntos/162/imagenes/014/478/0014478103.jpg?0000-00-00-00-00-00"> <!-- random image -->
                <div class="caption right-align">
                    <h3>Right Aligned Caption</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                <a class="waves-effect waves-light btn">Ver Oferta</a>
                </div>
            </li>
            <li>
                <img src="http://cdn01.ib.infobae.com/adjuntos/162/imagenes/014/478/0014478125.jpg?0000-00-00-00-00-00"> <!-- random image -->
                <div class="caption center-align">
                    <h3>This is our big Tagline!</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                <a class="waves-effect waves-light btn">Ver Oferta</a>
                </div>
            </li>
        </ul>
    </div>
</div>
<g:if test="${vehiculo!=null}">
    <a  id="clickButton" class="tooltipped waves-effect waves-light btn" data-position="right" data-tooltip="Abre un modal" href="#modalvehiculos">Test Modal</a>
</g:if>
<div id="modalvehiculos" class="modal">
    <div class="modal-content">
        <h4>Listado de autos</h4>
        <ul class="collection">
            <g:each var="v" in="${vehiculo}">
                <li class="collection-item avatar">
                    <img src="images/yuna.jpg" alt="" class="circle">
                    <span class="title">${v.marca}</span>
                    <p>${v.modelo} <br>
                        ${v.descripcion}
                    </p>
                    <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                    <g:link action="reserva" params="[idvehiculo:v.id, idsucursal:v.sucursalId]">Seleccionar</g:link>
                </li>
            </g:each>
        </ul>
    </div>
    <div class="modal-footer">
        <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
    </div>
</div>

<script>

</script>
</body>
</html>