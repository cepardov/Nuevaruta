<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<ul id="dropdown1" class="dropdown-content">
    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name } }">
        <li><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
    </g:each>
</ul>
<ul class="right hide-on-med-and-down">
    <!--<li><a class="dropdown-button" href="#!" data-activates="dropdown1">Controladores Disponibles<i class="material-icons right">arrow_drop_down</i></a></li>-->
    <!--<li><a href="${createLink(controller:'login', action:'login')}">Iniciar Sesión</a></li>-->
</ul>

<ul id="nav-mobile" class="side-nav">
    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name } }">
        <li><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
    </g:each>
<!--<li><a href="${createLink(controller:'login', action:'login')}">Iniciar Sesión</a></li>-->
</ul>
<a href="" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
</div>
</nav><!-- Aqui termina la continuacion del nav desde layout/main.gsp -->

<div class="row"><!-- Base de la zona del contenido sector blanco -->
    <div class="col s12 m3"><!-- Zona lateral izquerda -->
        <div class="row">
            <div class="col s12"> <!-- Formato del manu para administrador o formulario arrendamiento -->
                <br>
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name } }">
                    <g:link class="waves-effect waves-light btn-large col s12" controller="${c.logicalPropertyName}">${c.name}</g:link><br><br>
                </g:each>
            </div>
            <div class="row">
                <div class="col s12">
                    <div class="card-panel teal z-depth-4">
                        <span class="white-text">
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

    <div class="slider col s12 m9"><!-- Contenido derecho -->
        <ul class="slides z-depth-5">
            <li>
                <img src="http://lorempixel.com/580/250/nature/1"> <!-- random image -->
                <div class="caption center-align">
                    <h3>This is our big Tagline!</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <img src="http://lorempixel.com/580/250/nature/2"> <!-- random image -->
                <div class="caption left-align">
                    <h3>Left Aligned Caption</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <img src="http://lorempixel.com/580/250/nature/3"> <!-- random image -->
                <div class="caption right-align">
                    <h3>Right Aligned Caption</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <img src="http://lorempixel.com/580/250/nature/4"> <!-- random image -->
                <div class="caption center-align">
                    <h3>This is our big Tagline!</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
        </ul>
    </div>
</div>


<!-- Modal Structure -->
<div id="modal1" class="modal">
    <div class="modal-content">
        <h4>Esto es el modal de Manzana</h4>
        <p>Porque a manzana le gustan los modals</p>
    </div>
    <div class="modal-footer">
        <a href="#!" class=" modal-action modal-close waves-effect waves btn-flat">Cerrar</a>
    </div>
</div>

</body>
</html>