<!doctype html>
<html>
    <head>
        <title><g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
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
        </nav

        <g:if env="development">
            <g:if test="${Throwable.isInstance(exception)}">
                <g:renderException exception="${exception}" />
            </g:if>
            <g:elseif test="${request.getAttribute('javax.servlet.error.exception')}">
                <g:renderException exception="${request.getAttribute('javax.servlet.error.exception')}" />
            </g:elseif>
            <g:else>
                <ul class="errors">
                    <li>An error has occurred</li>
                    <li>Exception: ${exception}</li>
                    <li>Message: ${message}</li>
                    <li>Path: ${path}</li>
                </ul>
            </g:else>
        </g:if>
        <g:else>
            <ul class="errors">
                <li>An error has occurred</li>
            </ul>
        </g:else>
    </body>
</html>
