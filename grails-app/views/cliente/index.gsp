<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="administrador" />
    <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="slider col s12 m12">
    <div id="list-cliente" class="content scaffold-list" role="main">
        <div class="row">
            <table class="responsive-table bordered highlight centered">
                <thead>
                <tr>
                    <th>RUT</th>
                    <th>Nombres</th>
                    <th>Paterno</th>
                    <th>Materno</th>
                    <th>Fech. Nacimiento</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                    <th>Estado</th>
                </tr>
                </thead>
                <tbody>
                <g:each var="v" in="${clienteList}">
                    <tr class="tooltipped" data-position="top" data-delay="2000" data-tooltip="ID Facebook ${v.facebookID}">
                        <td>${v.rut}</td>
                        <td>${v.nombres}</td>
                        <td>${v.paterno}</td>
                        <td>${v.materno}</td>
                        <td>${v.fechaNacimiento}</td>
                        <td>${v.telefono}</td>
                        <td>${v.correo}</td>
                        <td>${v.estado}</td>
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
            <g:paginate total="${clienteCount ?: 0}" />
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
            <!---RUT, marca, modelo, chasis, año, valor, estado, descripcion, valorHoraExtra--->
                <g:form class="col s12" resource="${this.cliente}" method="PUT">
                    <div class="row">
                        <div class="input-field col s12 m1">
                            <f:input class="tooltipped" length="12" maxlength="13" property="rut" id="rut" bean="cliente" data-position="bottom" data-delay="50" data-tooltip="Ej: 12.345.678-k"/>
                            <label for="RUT">RUT</label>
                        </div>
                        <div class="input-field col s12 m3">
                            <f:input property="nombres" id="nombres" bean="cliente"/>
                            <label for="nombres">Nombres</label>
                        </div>
                        <div class="input-field col s12 m2">
                            <f:input property="paterno" id="paterno" bean="cliente"/>
                            <label for="paterno">Paterno</label>
                        </div>
                        <div class="input-field col s12 m2">
                            <f:input property="materno" id="materno" bean="cliente"/>
                            <label for="materno">Materno</label>
                        </div>
                        <div class="input-field col s12 m2">
                            <f:input property="telefono" id="telefono" bean="cliente"/>
                            <label for="telefono">Telefono</label>
                        </div>
                        <div class="input-field inline col s12 m4">
                            <f:input class="validate" type="email" property="correo" id="correo" bean="cliente"/>
                            <label for="correo" data-error="El email debe estar en formato usuario@dominio.com" data-success="">Correo</label>
                        </div>
                        <div class="input-field col s12 m2">
                            <f:input property="clave" id="clave" bean="cliente"/>
                            <label for="clave">Contraseña</label>
                        </div>
                        <div class="input-field col s12 m1">
                            <f:input property="fechaNacimiento" id="fechaNacimiento" bean="cliente"/>
                            <label for="fechaNacimiento">F. Nacimiento</label>
                        </div>
                    </div>

                    <!-- Menu Modal Edit -->
                    <div class="fixed-action-btn">
                        <button name="create" class="save waves-effect waves-light btn-floating btn-large teal tooltipped" value="${message(code: 'default.button.create.label', default: 'Create')}" type="submit" data-position="left" data-delay="50" data-tooltip="Guardar ${controllerName}"><i class="material-icons right">send</i></button>
                        <a class="modal-action modal-close waves-effect waves-light btn-floating btn-large red tooltipped" href="<g:createLink controller="cliente" action="index" />" data-position="left" data-delay="50" data-tooltip="Cancelar"><i class="material-icons">cancel</i></a>
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
            <!---RUT, marca, modelo, chasis, año, valor, estado, descripcion, valorHoraExtra--->
                <g:form class="col s12" action="save">
                    <div class="row">
                        <div class="input-field col s12 m1">
                            <f:input class="tooltipped" length="12" maxlength="13" property="rut" id="rut" bean="cliente" data-position="bottom" data-delay="50" data-tooltip="Ej: 12.345.678-k"/>
                            <label for="RUT">RUT</label>
                        </div>
                        <div class="input-field col s12 m3">
                            <f:input property="nombres" id="nombres" bean="cliente"/>
                            <label for="nombres">Nombres</label>
                        </div>
                        <div class="input-field col s12 m2">
                            <f:input property="paterno" id="paterno" bean="cliente"/>
                            <label for="paterno">Paterno</label>
                        </div>
                        <div class="input-field col s12 m2">
                            <f:input property="materno" id="materno" bean="cliente"/>
                            <label for="materno">Materno</label>
                        </div>
                        <div class="input-field col s12 m2">
                            <f:input property="telefono" id="telefono" bean="cliente"/>
                            <label for="telefono">Telefono</label>
                        </div>
                        <div class="input-field inline col s12 m4">
                            <f:input class="validate" type="email" property="correo" id="correo" bean="cliente"/>
                            <label for="correo" data-error="El email debe estar en formato usuario@dominio.com" data-success="">Correo</label>
                        </div>
                        <div class="input-field col s12 m2">
                            <f:input property="clave" id="clave" bean="cliente"/>
                            <label for="clave">Contraseña</label>
                        </div>
                        <div class="input-field col s12 m1">
                            <f:input property="fechaNacimiento" id="fechaNacimiento" bean="cliente"/>
                            <label for="fechaNacimiento">F. Nacimiento</label>
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