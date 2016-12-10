<!DOCTYPE html>
<html lang="es">
<head>
    <title>${controllerName}</title>
    <meta name="layout" content="main"/>
</head>
<body>
    <div class="container">
        <div class="section">
            <div class="row">
                <div class="col s12 m4">
                </div>
                <div class="col s12 m4">
                    <div class="row">
                        <g:if test="${session?.user}">
                        </g:if>
                        <g:else>
                            <g:form controller="dashboard" action="login">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input id="icon_prefix" name="correo" type="text" class="validate tooltipped" data-position="right">
                                    <label for="icon_prefix">Correo electrónico</label>
                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">vpn_key</i>
                                    <input id="icon_telephone" name="clave" type="password" class="validate tooltipped" data-position="right">
                                    <label for="icon_telephone">Contraseña</label>
                                </div>
                                <div class="input-field col s12">
                                    <button class="btn waves-effect waves-light" style="width:100%; height:50px" type="submit" name="submitButton">Entrar
                                        <i class="material-icons right">send</i>
                                    </button>
                                </div>
                                <!--<p class="info">
                                    <g:link controller="user" action="register">Registrar</g:link>
                                </p>-->
                            </g:form>
                        </g:else>
                    </div>
                </div>
                <div class="col s12 m4">
                </div>
            </div>
        </div>
    </div>
</body>

</html>
