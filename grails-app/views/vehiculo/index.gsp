<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="administrador" />
    <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
<div class="slider col s12 m12">
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
                        <td><g:link class="btn-floating waves-effect waves-light yellow darken-2" action="edit" id="${v.id}"><i class="material-icons">edit</i></g:link></td>
                        <td><g:link class="btn-floating waves-effect waves-light red" action="delete" id="${v.id}"><i class="material-icons">delete</i></g:link></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <div class="pagination">
            <g:paginate total="${vehiculoCount ?: 0}" />
        </div>
    </div>

    <!-- Modal Trigger
    <a class="waves-effect waves-light btn" href="#modal1">Modal</a>
    -->

    <!-- Modal Edition Structure -->
    <div id="modalEdicion" class="modal bottom-sheet">
        <div class="modal-content">
            <h4>Modal Header</h4>
            <p>A bunch of text</p>
        </div>
        <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
        </div>
    </div>

    <!-- Modal Creacion Structure -->
    <div id="modalCreate" class="modal bottom-sheet">
        <div class="modal-content">
            <h4>Modal Header</h4>
            <p>A bunch of text</p>
        </div>
        <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
        </div>
    </div>

</div>

<!-- Menu de edicion -->
<div class="fixed-action-btn">
    <!-- <g:link class="create btn-floating btn-large teal tooltipped" action="create" data-position="left" data-delay="50" data-tooltip="Agregar ${controllerName}"></g:link>-->
    <a class="create btn-floating btn-large teal tooltipped" href="#modalCreate" data-position="left" data-delay="50" data-tooltip="Agregar ${controllerName}"><i class="material-icons">add</i></a>
</div>
</body>
</html>