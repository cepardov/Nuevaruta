<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <asset:stylesheet src="css/materialize.css"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>
        <g:layoutTitle default="Rent a Car"/>
    </title>
    <g:layoutHead/>
</head>
<body>
<nav class="z-depth-3">
    <div class="nav-wrapper blue-grey lighten-1">
        <a id="logo-container" href="http://localhost:8080" class="brand-logo">
            <asset:image src="img/logo.png" alt="logo" class="img-responsive" width="18%" height="18%" style="padding:1%"/>
        </a>
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
        <g:layoutBody/>
    </div>
        <footer class="page-footer blue-grey lighten-1 z-depth-3">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text">Footer Content</h5>
                    <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
                </div>
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text">Links</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    © 2014 Copyright Text
                    <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
                </div>
            </div>
        </footer>
        <!--Import jQuery before materialize.js-->
        <asset:javascript src="js/jquery-2.1.1.min.js"/>
        <asset:javascript src="js/materialize.js"/>
        <asset:javascript src="js/forms.js"/>
</body>
</html>

