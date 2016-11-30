<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="administrador" />
        <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="slider col s12 m9"><!-- Contenido derecho -->

            <a href="#list-vehiculo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="list-vehiculo" class="content scaffold-list" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <div class="row">
                    <table>
                        <thead>
                        <tr>
                            <th data-field="id">Patente</th>
                            <th data-field="name">Marca</th>
                            <th data-field="price">Modelo</th>
                            <th data-field="id">Año</th>
                            <th data-field="name">Sucursal</th>
                            <th data-field="price">Tipo de vehiculo</th>
                            <th data-field="price">Valor Día</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each var="v" in="${vehiculoList}">
                            <tr>
                                <td><g:link action="edit" id="${v.id}">${v.patente}</g:link></td>
                                <td>${v.marca}</td>
                                <td>${v.modelo}</td>
                                <td>${v.año}</td>
                                <td>${v.sucursal.region}</td>
                                <td>${v.tipoVehiculo.nombre}</td>
                                <td>${v.valor}</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
                <div class="pagination">
                    <g:paginate total="${vehiculoCount ?: 0}" />
                </div>
            </div>

        </div>
    </body>
</html>