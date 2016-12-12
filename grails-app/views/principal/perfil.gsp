<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
    </head>
    <body>
    <h1>Mis datos</h1>
    <g:each var="c" in="${cliente}">
        <label>${c.rut}</label>
        <label>${c.nombres}</label>
        <label>${c.paterno}</label>
        <label>${c.materno}</label>
        <label>${c.correo}</label>
        <label>${c.telefono}</label>
        <label>${c.clave}</label>
    </g:each>
    <h1>Mis reservas</h1>
    <g:each var="r" in="${reservas}">
        <label>${r.fechaRetiro}</label>
        <label>${r.fechaDevolucion}</label>
        <label>${r.estado}</label>
        <label>${r.pago.monto}</label>
        <label>${r.vehiculo.patente}</label>
        <label>${r.vehiculo.marca}</label>
        <label>${r.vehiculo.modelo}</label>
    </g:each>

    </body>
</html>