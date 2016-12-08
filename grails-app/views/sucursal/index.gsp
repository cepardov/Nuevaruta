<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="administrador" />
    <g:set var="entityName" value="${message(code: 'sucursal.label', default: 'Sucursal')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="slider col s12 m12">
    <div id="list-sucursal" class="content scaffold-list" role="main">
        <div class="row">
            <table class="responsive-table bordered highlight centered">
                <thead>
                <tr>
                    <th data-field="id">Rut</th>
                    <th data-field="name">Nombre</th>
                    <th data-field="price">Región</th>
                    <th data-field="id">Ciudad</th>
                    <th data-field="name">Fono</th>
                    <th data-field="price">Correo</th>
                    <th data-field="price">Estado</th>
                    <th data-field="price">Gerente</th>
                </tr>
                </thead>
                <tbody>
                <g:each var="s" in="${sucursalList}">
                    <tr>
                        <td>${s.rut}</td>
                        <td>${s.nombre}</td>
                        <td>${s.region}</td>
                        <td>${s.ciudad}</td>
                        <td>${s.fono}</td>
                        <td>${s.correo}</td>
                        <td>${s.estado}</td>
                        <td>${s.usuario.nombres} ${s.usuario.paterno} ${s.usuario.paterno}</td>
                        <td>
                            <g:link class="btn-floating waves-effect waves-light yellow darken-2 tooltipped" id="${s.id}" data-position="left" data-delay="50" data-tooltip="Editar ${controllerName}"><i class="material-icons">edit</i></g:link>
                            <g:link class="btn-floating waves-effect waves-light red tooltipped" action="eliminar" id="${s.id}" data-position="left" data-delay="50" data-tooltip="Eliminar ${controllerName}"><i class="material-icons">delete</i></g:link>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <div class="pagination">
            <g:paginate total="${vehiculoCount ?: 0}" />
        </div>
    </div>

    <!-- Menu flotante Crear -->
    <div class="fixed-action-btn">
        <a class="create waves-effect waves-light btn-floating btn-large teal tooltipped" href="#modalCreate" data-position="left" data-delay="50" data-tooltip="Agregar ${controllerName}"><i class="material-icons">add</i></a>
    </div>

    <!-- Modal Edition Structure -->
    <div id="modalEdicion" class="modal bottom-sheet">
        <div class="modal-content">
            <h5>Editar ${controllerName}</h5>
            <div class="row">
            <!---rut, nombre, region, fono, ciudad, valor, estado, correo, valorHoraExtra--->
                <g:form class="col s12" resource="${this.sucursal}" method="PUT">
                    <div class="row">
                        <div class="input-field col s12 m1">
                            <f:input class="tooltipped" length="8" maxlength="8" property="rut" id="rut" bean="sucursal" data-position="bottom" data-delay="50" data-tooltip="Ej: AA-BB-88"/>
                            <label for="rut">Rut</label>
                        </div>
                        <div class="input-field col s12 m2">
                            <label for="nombre">Nombre</label>
                            <f:input property="nombre" id="nombre" bean="sucursal"/>
                        </div>
                        <div class="input-field col s12 m2">
                            <label for="region">Region</label>
                            <f:input property="region" id="region" bean="sucursal"/>
                        </div>
                        <div class="input-field col s12 m1">
                            <label for="ciudad">Ciudad</label>
                            <f:input type="text" property="ciudad" id="ciudad" bean="sucursal"/>
                        </div>
                        <div class="input-field col s12 m2">
                            <label for="fono">N° fono</label>
                            <f:input property="fono" id="fono" bean="sucursal"/>
                        </div>
                        <div class="input-field col s12 m4">
                            <label for="correo">Correo</label>
                            <f:input class="materialize-textarea" length="99" maxlength="100" property="correo" id="correo" bean="sucursal"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="row">
                            <div class="input-field col s12 m2">
                                <label for="estado">Estado</label>
                                <f:input type="text" property="estado" id="estado" bean="sucursal"/>
                            </div>
                            <div class="input-field col s12 m2">
                                <label for="direccion">Dirección</label>
                                <f:input type="text" property="direccion" id="direccion" bean="sucursal"/>
                            </div>
                            <div class="input-field col s12 m2">
                                <label for="usuario">Usuario</label>
                                <f:input type="text" property="usuario" id="usuario" bean="sucursal"/>
                            </div>
                        </div>
                    </div>
                    <!-- Menu Modal Edit -->
                    <div class="fixed-action-btn">
                        <button name="create" class="save waves-effect waves-light btn-floating btn-large teal tooltipped" value="${message(code: 'default.button.create.label', default: 'Create')}" type="submit" data-position="left" data-delay="50" data-tooltip="Guardar ${controllerName}"><i class="material-icons right">send</i></button>
                        <a class="modal-action modal-close waves-effect waves-light btn-floating btn-large red tooltipped" href="<g:createLink controller="sucursal" action="index" />" data-position="left" data-delay="50" data-tooltip="Cancelar"><i class="material-icons">cancel</i></a>
                    </div>
                </g:form>
            </div>
        </div>

    </div>

    <!-- Modal Creacion Structure -->
    <div id="modalCreate" class="modal bottom-sheet">
        <div class="modal-content">
            <h5>Crear ${controllerName}</h5>
            <div class="row">
            <!---rut, nombre, region, fono, ciudad, valor, estado, correo, valorHoraExtra--->
                <g:form action="save">
                    <div class="row">
                        <div class="input-field col s12 m1">
                            <label for="rut">Rut</label>
                            <f:input class="tooltipped" length="8" maxlength="8" property="rut" id="rut" bean="sucursal" data-position="bottom" data-delay="50" data-tooltip="Ej: AA-BB-88"/>
                        </div>
                        <div class="input-field col s12 m2">
                            <label for="nombre">Nombre</label>
                            <f:input property="nombre" id="nombre" bean="sucursal"/>
                        </div>
                        <div class="input-field col s12 m2">
                            <label for="region">Region</label>
                            <f:input property="region" id="region" bean="sucursal"/>
                        </div>
                        <div class="input-field col s12 m1">
                            <label for="ciudad">Ciudad</label>
                            <f:input type="text" property="ciudad" id="ciudad" bean="sucursal"/>
                        </div>
                        <div class="input-field col s12 m2">
                            <label for="fono">N° fono</label>
                            <f:input property="fono" id="fono" bean="sucursal"/>
                        </div>
                        <div class="input-field col s12 m4">
                            <label for="correo">Correo</label>
                            <f:input class="materialize-textarea" length="99" maxlength="100" property="correo" id="correo" bean="sucursal"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="row">
                            <div class="input-field col s12 m2">
                                <label for="estado">Estado</label>
                                <f:input type="text" property="estado" id="estado" bean="sucursal"/>
                            </div>
                            <div class="input-field col s12 m2">
                                <label for="direccion">Dirección</label>
                                <f:input type="text" property="direccion" id="direccion" bean="sucursal"/>
                            </div>
                            <div class="input-field col s12 m2">
                                <label for="usuario">Usuario</label>
                                <f:input type="text" property="usuario" id="usuario" bean="sucursal"/>
                            </div>
                        </div>
                    </div>

                    <!-- Menu Modal Create-->
                    <div class="fixed-action-btn">
                        <button name="create" class="save waves-effect waves-light btn-floating btn-large teal tooltipped" value="${message(code: 'default.button.create.label', default: 'Create')}" type="submit" data-position="left" data-delay="50" data-tooltip="Guardar ${controllerName}"><i class="material-icons right">send</i></button>
                        <a class="modal-action modal-close waves-effect waves-light btn-floating btn-large red tooltipped" href="#!" data-position="left" data-delay="50" data-tooltip="Cancelar"><i class="material-icons">cancel</i></a>
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