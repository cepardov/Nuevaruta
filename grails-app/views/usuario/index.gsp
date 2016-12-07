<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="administrador" />
    <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
<div class="slider col s12 m12">
    <div id="list-usuario" class="content scaffold-list" role="main">

        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="row">
            <table class="highlight centered">
                <thead>
                <tr>
                    <th data-field="id">RUT</th>
                    <th data-field="name">Nombres</th>
                    <th data-field="price">Paterno</th>
                    <th data-field="id">Telefono</th>
                    <th data-field="name">Correo</th>
                </tr>
                </thead>
                <tbody>
                <g:each var="v" in="${usuarioList}">
                    <tr>
                        <td>${v.rut}</td>
                        <td>${v.nombres}</td>
                        <td>${v.paterno}</td>
                        <td>${v.telefono}</td>
                        <td>${v.correo}</td>
                        <td>
                            <g:link class="btn-floating waves-effect waves-light yellow darken-2 tooltipped" id="${v.id}" data-position="left" data-delay="50" data-tooltip="Editar ${controllerName}"><i class="material-icons">edit</i></g:link>
                            <g:link class="btn-floating waves-effect waves-light red tooltipped" action="eliminar" id="${v.id}" data-position="left" data-delay="50" data-tooltip="Eliminar ${controllerName}"><i class="material-icons">delete</i></g:link>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <div class="pagination">
            <g:paginate total="${usuarioCount ?: 0}" />
        </div>
    </div>

    <!-- Menu de edicion -->
    <div class="fixed-action-btn">
        <a class="create btn-floating btn-large teal tooltipped" href="#modalCreate" data-position="left" data-delay="50" data-tooltip="Agregar ${controllerName}"><i class="material-icons">add</i></a>
    </div>

    <!-- Modal Edition Structure -->
    <div id="modalEdicion" class="modal bottom-sheet">
        <div class="modal-content">
            <h5>Editar ${controllerName}</h5>

            <div class="row">
            <!---rut, nombres, paterno, chasis, telefono, valor, estado, descripcion, valorHoraExtra--->
                <g:form class="col s12" resource="${this.usuario}" method="PUT">
                    <div class="input-field col s6">
                        <f:input property="rut" id="rut" bean="usuario"/>
                        <label for="rut">RUT</label>
                    </div>
                    <div class="input-field col s6">
                        <label for="nombres">Nombres</label>
                        <f:input property="nombres" id="nombres" bean="usuario"/>
                    </div>
                    <div class="input-field col s6">
                        <label for="paterno">Paterno</label>
                        <f:input property="paterno" id="paterno" bean="usuario"/>
                    </div>
                    <div class="input-field col s6">
                        <label for="telefono">Telefono</label>
                        <f:input property="telefono" id="telefono" bean="usuario"/>
                    </div>
                    <div class="input-field col s6">
                        <f:input property="correo" id="rut" bean="usuario"/>
                    </div>

                    <!-- Menu Modal Edit -->
                    <div class="fixed-action-btn">
                        <button name="create" class="save btn-floating btn-large teal tooltipped" value="${message(code: 'default.button.create.label', default: 'Create')}" type="submit" data-position="left" data-delay="50" data-tooltip="Guardar ${controllerName}"><i class="material-icons right">send</i></button>
                        <a class="modal-action modal-close btn-floating btn-large red tooltipped" href="<g:createLink controller="usuario" action="index" />" data-position="left" data-delay="50" data-tooltip="Cancelar"><i class="material-icons">cancel</i></a>
                    </div>
                </g:form>
            </div>
        </div>

    </div>

    <!-- Modal Creacion Structure -->
    <div id="modalCreate" class="modal bottom-sheet">
        <div class="modal-content">
            <h4>Modal Header</h4>
            <div class="row">
            <!---rut, nombres, paterno, chasis, telefono, valor, estado, descripcion, valorHoraExtra--->
                <g:form action="save">
                    <div class="row">
                        <fieldset class="form">
                            <div class="input-field col s6">
                                <label for="rut">RUT</label>
                                <f:input property="rut" id="rut" bean="usuario"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="nombres">Nombres</label>
                                <f:input property="nombres" id="nombres" bean="usuario"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="paterno">Paterno</label>
                                <f:input property="paterno" id="paterno" bean="usuario"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="telefono">Telefono</label>
                                <f:input property="telefono" id="telefono" bean="usuario"/>
                            </div>
                            <div class="input-field col s6">
                                <f:input property="correo" id="rut" bean="usuario"/>
                            </div>
                        </fieldset>
                    </div>
                    <!-- Menu Modal Create-->
                    <div class="fixed-action-btn">
                        <button name="create" class="save btn-floating btn-large teal tooltipped" value="${message(code: 'default.button.create.label', default: 'Create')}" type="submit" data-position="left" data-delay="50" data-tooltip="Guardar ${controllerName}"><i class="material-icons right">send</i></button>
                        <a class="modal-action modal-close btn-floating btn-large red tooltipped" href="#!" data-position="left" data-delay="50" data-tooltip="Cancelar"><i class="material-icons">cancel</i></a>
                    </div>
                </g:form>
            </div>
        </div>

    </div>
    <g:if test="${params.id}">
        <a type="hidden" href="#modalEdicion" data-position="left" data-delay="50" id="clickButton"></a>
    </g:if>
</body>
</html>