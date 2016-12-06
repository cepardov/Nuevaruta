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
                        <td><g:link class="btn-floating waves-effect waves-light yellow darken-2" id="${v.id}" data-position="left" data-delay="50" data-tooltip="Agregar ${controllerName}"><i class="material-icons">edit</i></g:link></td>
                        <td><g:link class="btn-floating waves-effect waves-light red" action="eliminar" id="${v.id}"><i class="material-icons">delete</i></g:link></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <div class="pagination">
            <g:paginate total="${vehiculoCount ?: 0}" />
        </div>
    </div>

    <!-- Menu de edicion -->
    <div class="fixed-action-btn">
        <a class="create btn-floating btn-large teal tooltipped" href="#modalCreate" data-position="left" data-delay="50" data-tooltip="Agregar ${controllerName}"><i class="material-icons">add</i></a>
    </div>

    <!-- Modal Edition Structure -->
    <div id="modalEdicion" class="modal bottom-sheet">
        <div class="modal-content">
            <h4>Modal Header</h4>
            <div class="row">
            <!---patente, marca, modelo, chasis, año, valor, estado, descripcion, valorHoraExtra--->
                <g:form resource="${this.vehiculo}" method="PUT">
                    <div class="row">
                        <fieldset class="form">
                            <div class="input-field col s6">
                                <label for="patente">Patente</label>
                                <f:input property="patente" id="patente" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="marca">Marca</label>
                                <f:input property="marca" id="marca" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="modelo">Modelo</label>
                                <f:input property="modelo" id="modelo" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="año">Año</label>
                                <f:input property="año" id="año" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <f:input property="sucursal" id="patente" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <f:input property="tipoVehiculo" id="patente" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="valor">Valor</label>
                                <f:input property="valor" id="valor" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="valorh">Valor hora</label>
                                <f:input property="valorHoraExtra" id="valorh" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="descripcion">Descripción</label>
                                <f:input property="descripcion" id="descripcion" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <select name="estado">
                                    <option value="" disabled selected>Elija opcion</option>
                                    <option value="ACTIVO">Activo</option>
                                    <option value="NO_ACTIVO">No Activo</option>
                                </select>
                            </div>
                            <div class="input-field col s6">
                                <label for="chasis">N° chasis</label>
                                <f:input property="chasis" id="chasis" bean="vehiculo"/>
                            </div>
                        </fieldset>
                    </div>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
                </g:form>
            </div>
        </div>
        <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
        </div>
    </div>

    <!-- Modal Creacion Structure -->
    <div id="modalCreate" class="modal bottom-sheet">
        <div class="modal-content">
            <h4>Modal Header</h4>
            <div class="row">
            <!---patente, marca, modelo, chasis, año, valor, estado, descripcion, valorHoraExtra--->
                <g:form action="save">
                    <div class="row">
                        <fieldset class="form">
                            <div class="input-field col s6">
                                <label for="patente">Patente</label>
                                <f:input property="patente" id="patente" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="marca">Marca</label>
                                <f:input property="marca" id="marca" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="modelo">Modelo</label>
                                <f:input property="modelo" id="modelo" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="año">Año</label>
                                <f:input property="año" id="año" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <f:input property="sucursal" id="patente" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <f:input property="tipoVehiculo" id="patente" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="valor">Valor</label>
                                <f:input property="valor" id="valor" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="valorh">Valor hora</label>
                                <f:input property="valorHoraExtra" id="valorh" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <label for="descripcion">Descripción</label>
                                <f:input property="descripcion" id="descripcion" bean="vehiculo"/>
                            </div>
                            <div class="input-field col s6">
                                <select name="estado">
                                    <option value="" disabled selected>Elija opcion</option>
                                    <option value="ACTIVO">Activo</option>
                                    <option value="NO_ACTIVO">No Activo</option>
                                </select>
                            </div>
                            <div class="input-field col s6">
                                <label for="chasis">N° chasis</label>
                                <f:input property="chasis" id="chasis" bean="vehiculo"/>
                            </div>
                        </fieldset>
                    </div>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
                </g:form>
            </div>
        </div>
        <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
        </div>
    </div>
</div>
<g:if test="${params.id}">
    <a type="hidden" href="#modalEdicion" data-position="left" data-delay="50" id="clickButton"></a>
</g:if>
</body>
</html>