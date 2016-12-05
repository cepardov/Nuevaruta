<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
    </head>
    <body>
        <ul class="collapsible" data-collapsible="accordion">
            <li>
                <div class="collapsible-header"><i class="material-icons">whatshot</i>Datos sucursal</div>
                <div class="collapsible-body">
                    <div class="row">
                        <div class="input-field col s3">
                            <f:input property="rut" bean="sucursal" id="rut" type="text" class="validate"></f:input>
                            <label for="rut">Rut Sucursal</label>
                        </div>
                        <div class="input-field col s3">
                            <f:input property="nombre" bean="sucursal" id="nombre" type="text" class="validate"></f:input>
                            <label for="nombre">Nombre</label>
                        </div>
                        <div class="input-field col s3">
                            <f:input property="correo" bean="sucursal" id="correo" type="text" class="validate"></f:input>
                            <label for="correo">Correo</label>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="collapsible-header active"><i class="material-icons">filter_drama</i>Datos Del Cliente</div>
                <div class="collapsible-body">
                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s3">
                                    <f:input property="rut" bean="cliente" id="rut" type="text" class="validate"></f:input>
                                    <label for="rut">Rut</label>
                                </div>
                                <div class="input-field col s3">
                                    <f:input property="nombres" bean="cliente" id="nombres" type="text" class="validate"></f:input>
                                    <label for="nombres">Nombre</label>
                                </div>
                                <div class="input-field col s3">
                                    <f:input property="paterno" bean="cliente" id="paterno" type="text" class="validate"></f:input>
                                    <label for="paterno">Apellido Paterno</label>
                                </div>
                                <div class="input-field col s3">
                                    <f:input property="materno" bean="cliente" id="materno" type="text" class="validate"></f:input>
                                    <label for="materno">Apellido Materno</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s3">
                                    <f:input property="telefono" bean="cliente" id="telefono" type="text" class="validate"></f:input>
                                    <label for="telefono">Telefono</label>
                                </div>
                                <div class="input-field col s3">
                                    <f:input property="correo" bean="cliente" id="correo" type="text" class="validate"></f:input>
                                    <label for="correo">Nombre</label>
                                </div>
                                <div class="input-field col s3">
                                    <f:input property="fechaNacimiento" bean="cliente" id="fechanacimiento" type="text" class="validate"></f:input>
                                    <label for="fechanacimiento">Fecha Nacimiento</label>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </li>
            <li>
                <div class="collapsible-header"><i class="material-icons">place</i>Datos del Vehiculo</div>
                <div class="collapsible-body">
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
            </li>
            <li>
                <div class="collapsible-header"><i class="material-icons">whatshot</i>Datos del contrato</div>
                <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
            </li>
            <li>
                <div class="collapsible-header"><i class="material-icons">whatshot</i>Pago</div>
                <div class="collapsible-body"><p>Aqui colocamos PAYPAL</p></div>
            </li>
        </ul>
    </body>
</html>