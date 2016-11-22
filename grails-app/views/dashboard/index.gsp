<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="administrador"/>
</head>

<body>
<div class="col s12 m9">
    <div class="row">
        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name } }">
            <div class="col s3 m2 center">
                <a class="tooltipped" data-position="" data-delay="400" data-tooltip="Añade, administra y edita ${c.name}s" href="<g:createLink controller="${c.logicalPropertyName}" action="index" />">
                    <div class="card blue-grey darken-1 waves-effect waves-light">
                        <div class="card-content small white-text">
                            <i class="material-icons medium">${}settings</i>
                            <p class="">${c.name}</p>
                        </div>
                    </div>
                </a>
            </div>
        </g:each>
    </div>
</div>

</body>
</html>