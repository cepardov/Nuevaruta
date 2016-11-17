<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
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
                Reloading active: ${grails.util.Environment.reloadingAgentEnabled}
            </span>
        </div>
    </div>
</div>

</body>
</html>