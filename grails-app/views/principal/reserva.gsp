<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Reserva')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="parallax-container">
        <div class="parallax"><img src="http://materializecss.com/images/parallax1.jpg"></div>
        <br>
        <g:form action="guardarReserva">
            <div class="container">
                <ul class="collapsible popout" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header teal white-text"><i class="material-icons">business</i>Datos de sucursal</div>
                        <div class="collapsible-body blue-grey lighten-5">
                            <div class="container">
                                <div class="row">
                                    <div class="input-field col s12 m4">
                                        <f:input property="rut" bean="sucursal" id="rut" type="text" class="validate" disabled="true"></f:input>
                                        <label for="rut">Rut Sucursal</label>
                                    </div>
                                    <div class="input-field col s12 m4">
                                        <f:input property="nombre" bean="sucursal" id="nombre" type="text" class="validate" disabled="true"></f:input>
                                        <label for="nombre">Nombre</label>
                                    </div>
                                    <div class="input-field col s12 m4">
                                        <f:input property="correo" bean="sucursal" id="correo" type="text" class="validate" disabled="true"></f:input>
                                        <label for="correo">Correo</label>
                                    </div>
                                    <div class="input-field col s12 m7">
                                        <f:input property="direccion" bean="sucursal" id="direccion" type="text" class="validate" disabled="true"></f:input>
                                        <label for="direccion">Direccion de entrega</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header teal white-text active"><i class="material-icons">person</i>Datos del cliente</div>
                        <div class="collapsible-body blue-grey lighten-5">
                            <div class="container">
                                <div class="row">
                                    <div class="input-field col s3">
                                        <input name="rut" id="rut" type="text" class="validate" oninput="checkRut(this);"  value="${cliente.rut}" required="" aria-required="true">
                                        <label for="rut">Rut</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <input name="nombres" id="nombres" type="text" class="validate" required="true">
                                        <label for="nombres">Nombres</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <input name="paterno" id="paterno" type="text" class="validate" value="${cliente.paterno}" required="true">
                                        <label for="paterno">Apellido Paterno</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <input property="materno" id="materno" type="text" class="validate" value="${cliente.materno}"required="true">
                                        <label for="materno">Apellido Materno</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <input name="telefono" id="telefono" type="text" class="validate" value="${cliente.telefono}" required="true">
                                        <label for="telefono">Telefono</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <input name="correo" id="correo" type="email" class="validate"  value="${cliente.correo}" required="true">
                                        <label for="correo">Correo</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <input type="date" class="date-picker"  name="fechaNacimiento" id="fechanacimiento" value="${formatDate(format:'MM/dd/yyyy',date:objInstance?.endDate)}">

                                        <label for="fechanacimiento">Fecha Nacimiento</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header teal white-text"><i class="material-icons">directions_car</i>Datos del vehiculo</div>
                        <div class="collapsible-body blue-grey lighten-5">
                            <div class="container">
                                <div class="row">
                                    <form class="col s12">
                                        <div class="row">
                                            <div class="input-field col s3">
                                                <f:input property="patente" bean="vehiculo" id="patente" type="text" class="validate"></f:input>
                                                <label for="patente">Patente</label>
                                            </div>
                                            <div class="input-field col s3">
                                                <f:input property="marca" bean="vehiculo" id="marca" type="text" class="validate"></f:input>
                                                <label for="marca">Marca</label>
                                            </div>
                                            <div class="input-field col s3">
                                                <f:input property="modelo" bean="vehiculo" id="modelo" type="text" class="validate"></f:input>
                                                <label for="modelo">Modelo</label>
                                            </div>
                                            <div class="input-field col s3">
                                                <f:input property="año" bean="vehiculo" id="año" type="text" class="validate"></f:input>
                                                <label for="año">Año</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s3">
                                                <f:input property="valor" bean="vehiculo" id="valor" type="text" class="validate"></f:input>
                                                <label for="valor">Valor diario</label>
                                            </div>
                                            <div class="input-field col s3">
                                                <f:input property="valorHoraExtra" bean="vehiculo" id="valorHoraExtra" type="text" class="validate"></f:input>
                                                <label for="valorHoraExtra">Valor Hora Extra</label>
                                            </div>
                                            <div class="input-field col s3">
                                                <f:input property="kilometraje" bean="vehiculo" id="kilometraje" type="text" class="validate"></f:input>
                                                <label for="kilometraje">Kilometraje Actual</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header teal white-text"><i class="material-icons">import_contacts</i>Condiciones</div>
                        <div class="collapsible-body blue-grey lighten-5">
                            <div class="container">
                                <br>
                                <h5>Condiciones de Arriendo - Cliente</h5>
                                <p>Licencia de Conducir vigente del país de residencia o Licencia Internacional.</p>
                                <p>Carnet de Identidad vigente o Pasaporte vigente (para extranjeros).</p>
                                <p>Tarjeta de Credito: cupo de Tarjeta mínimo para garantizar arriendo desde $ 250.000 ó USD 550.</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header teal white-text"><i class="material-icons">payment</i>Pago</div>
                        <div class="collapsible-body blue-grey lighten-5">
                            <div class="container">
                                <br>
                                <div class="row">
                                    <div class="input-field col s3">
                                        <input type="date" name="fechaRetiro" id="fechaRet" class="datepicker" value="${params.fecharetiro}">
                                        <label class="active" for="fecharet">Fecha retiro</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <f:input property="horaRetiro" bean="reserva"></f:input>
                                        <label class="active" for="valor">Hora retiro</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <input type="hidden" name="precioVehiculo" id="valor" value="${vehiculo.valor}">
                                    <input type="hidden" name="idvehiculo" value="${params.idvehiculo}">
                                    <div class="input-field col s3">
                                        <input type="date" name="fechaDevolucion" id="fechaDev" class="datepicker" value="${params.fechadevolucion}">
                                        <label class="active" for="fechaDev">Fecha Devolución</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <f:input property="horaDevolucion" bean="reserva"></f:input>
                                        <label class="active" for="valor">Hora Devolución</label>
                                    </div>
                                    <div class="input-field col s3">
                                        <input type="text" name="monto" id="monto">
                                        <label class="active" for="kilometraje">Total valor reserva</label>
                                    </div>
                                    <div class="input-field col s3">
                                       <g:submitButton name="pagar" class="btn waves-effect waves-light" action="guardarReserva" value="Pagar">Pagar</g:submitButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <!--
                <li>
                    <div class="collapsible-header teal white-text"><i class="material-icons">whatshot</i>Third</div>
                    <div class="collapsible-body blue-grey lighten-5">
                        <div class="container">

                        </div>
                    </div>
                </li>
                -->
                </ul>

            </div>
        </g:form>
    </div>
    <asset:javascript src="validarut.js"/>
    <script>
        window.onload = function() {
            var pv = document.getElementById("valor").value;
            var x= document.getElementById("fechaRet").value;
            var y= document.getElementById("fechaDev").value;
            var aFecha1 = x.split('-');
            var aFecha2 = y.split('-');
            var fFecha1 = Date.UTC(aFecha1[0],aFecha1[1]-1,aFecha1[2]);
            var fFecha2 = Date.UTC(aFecha2[0],aFecha2[1]-1,aFecha2[2]);
            var dif = fFecha2 - fFecha1;
            var dias = Math.floor(dif / (1000 * 60 * 60 * 24));
            var monto=dias*(pv*1000);
            document.getElementById("monto").value=monto;
        }
    </script>
    </body>
</html>