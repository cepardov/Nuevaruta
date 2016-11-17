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
    <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Controladores Disponibles<i class="material-icons right">arrow_drop_down</i></a></li>
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
</nav>
<div class="row">
    <div class="col s12 m5">
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