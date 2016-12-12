<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
    </head>
    <body>
    <h5>Mis Datos</h5>
    <div class="row">
    <!---RUT, marca, modelo, chasis, año, valor, estado, descripcion, valorHoraExtra--->
        <g:form class="col s12" resource="${this.cliente}" method="PUT" name="evt">
            <div class="row">
                <div class="input-field col s12 m1">
                    <f:input class="tooltipped" length="12" maxlength="13" onKeyPress="return SoloNumeros(event)" property="rut" id="rut" bean="cliente" data-position="bottom" data-delay="50" data-tooltip="Ej: 12.345.678-k"/>
                    <label for="RUT">RUT</label>
                </div>
                <div class="input-field col s12 m3">
                    <f:input property="nombres" id="nombres" onKeyPress="return soloLetras(event)" onKeyUp="this.value = this.value.toUpperCase()" bean="cliente"/>
                    <label for="nombres">Nombres</label>
                </div>
                <div class="input-field col s12 m2">
                    <f:input property="paterno" id="paterno" onKeyPress="return soloLetras(event)" onKeyUp="this.value = this.value.toUpperCase()" bean="cliente"/>
                    <label for="paterno">Paterno</label>
                </div>
                <div class="input-field col s12 m2">
                    <f:input property="materno" id="materno" onKeyPress="return soloLetras(event)" onKeyUp="this.value = this.value.toUpperCase()" bean="cliente"/>
                    <label for="materno">Materno</label>
                </div>
                <div class="input-field col s12 m2">
                    <f:input property="telefono" id="telefono" name="telefono" minLength="9" maxlength="9" onKeyPress="return SoloNumeros(event)" bean="cliente"/>
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
                <button name="update" class="save waves-effect waves-light btn-floating btn-large teal tooltipped" value="${message(code: 'default.button.create.label', default: 'Update')}" type="submit" data-position="left" data-delay="50" data-tooltip="Guardar"><i class="material-icons right">save</i></button>
                <a class="modal-action modal-close waves-effect waves-light btn-floating btn-large red tooltipped" href="<g:createLink controller="principal" action="index" />" data-position="left" data-delay="50" data-tooltip="Cancelar"><i class="material-icons">cancel</i></a>
            </div>
        </g:form>
    </div>

    <h5>Mis Reservas</h5>
    <div class="row">
        <table class="responsive-table bordered highlight centered">
            <thead>
            <tr>
                <th>Fecha de Retiro</th>
                <th>Fecha de devolucion</th>
                <th>Monto Pagado</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Matricula</th>
                <th>Estado</th>
            </tr>
            </thead>
            <tbody>
            <g:each var="r" in="${reservas}">
                <tr>
                    <td>${r.fechaRetiro}</td>
                    <td>${r.fechaDevolucion}</td>
                    <td>${r.pago.monto}</td>
                    <td>${r.vehiculo.marca}</td>
                    <td>${r.vehiculo.modelo}</td>
                    <td>${r.vehiculo.patente}</td>
                    <td>${r.estado}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    </body>
</html>