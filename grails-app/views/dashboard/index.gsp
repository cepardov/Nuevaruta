<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="administrador"/>
</head>

<body>
<div class="col s12 m9">
    <div class="row">
        <div class="col s3 m2 center">
            <a class="tooltipped" data-position="" data-delay="400" data-tooltip="Añade, administra y edita usuarios" href="<g:createLink controller="usuario" action="index" />">
                <div class="card blue-grey darken-1 waves-effect waves-light">
                    <div class="card-content small white-text">
                        <i class="material-icons medium">person</i>
                        <p class="">Usuarios</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col s3 m2 center">
            <a class="tooltipped" data-position="" data-delay="400" data-tooltip="Añade, administra y edita clientes" href="<g:createLink controller="cliente" action="index" />">
                <div class="card blue-grey darken-1 waves-effect waves-light">
                    <div class="card-content small white-text">
                        <i class="material-icons medium">people</i>
                        <p class="">Clientes</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>

</body>
</html>