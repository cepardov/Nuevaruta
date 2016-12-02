<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="administrador" />
    <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
<div class="slider col s12 m9">


    <div class="nav" role="navigation">
        <ul>

        </ul>
    </div>
    <div id="list-vehiculo" class="content scaffold-list" role="main">

        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="row">
            <table class="highlight centered">
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
                        <td>${v.patente}</td>
                        <td>${v.marca}</td>
                        <td>${v.modelo}</td>
                        <td>${v.año}</td>
                        <td>${v.sucursal.region}</td>
                        <td>${v.tipoVehiculo.nombre}</td>
                        <td>${v.valor}</td>
                        <td><g:link action="edit" id="${v.id}">editar</g:link></td>
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

<!-- Menu de edicion -->
<div class="fixed-action-btn">
    <g:link class="create btn-floating btn-large teal tooltipped" action="create" data-position="left" data-delay="50" data-tooltip="Agregar ${controllerName}"><i class="material-icons">add</i></g:link>
</div>
</body>
</html>