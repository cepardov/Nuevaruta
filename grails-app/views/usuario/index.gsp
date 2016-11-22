<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="administrador" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="fixed-action-btn">
        <a href="<g:createLink controller="usuario" action="create" />" class="btn-floating btn-large waves-effect waves-light green">
            <i class="large material-icons"><i class="material-icons">add</i></i>
        </a>
    </div>
        <div class="slider col s12 m9"><!-- Contenido derecho -->
            <div class="row">
                <form class="col s12">
                    <div class="row">
                        <div class="input-field col s6">
                            <input placeholder="Placeholder" id="first_name" type="text" class="validate">
                            <label for="first_name">First Name</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="last_name" type="text" class="validate">
                            <label for="last_name">Last Name</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input disabled value="I am not editable" id="disabled" type="text" class="validate">
                            <label for="disabled">Disabled</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="password" type="password" class="validate">
                            <label for="password">Password</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="email" type="email" class="validate">
                            <label for="email">Email</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12">
                            This is an inline input field:
                            <div class="input-field inline">
                                <input id="email" type="email" class="validate">
                                <label for="email" data-error="wrong" data-success="right">Email</label>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <a href="#list-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li></li>
                </ul>
            </div>
            <div id="list-usuario" class="content scaffold-list" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:table collection="${usuarioList}" />

                <div class="pagination">
                    <g:paginate total="${usuarioCount ?: 0}" />
                </div>
            </div>

        </div>
    </body>
</html>