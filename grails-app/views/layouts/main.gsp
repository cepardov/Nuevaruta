<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <asset:stylesheet src="css/materialize.css"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>
        <g:layoutTitle default="Rent a Car"/>
    </title>
    <g:layoutHead/>
</head>
<body>
    <head>
        <nav class="z-depth-3">
            <div class="nav-wrapper blue-grey lighten-1">
                <a id="logo-container" href="http://localhost:8080" class="brand-logo">
                    <asset:image src="img/logo.png" alt="logo" class="img-responsive" width="18%" height="18%" style="padding:1%"/>
                </a>
                <ul class="right hide-on-med-and-down">
                    <li><a data-position="right" href="#modal2" class="sesion">Registrate</a></li>
                    <li><a data-position="right" href="#modal1" class="sesion">Iniciar Sesión</a></li>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name } }">
                        <li><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
                    </g:each>
                <!--<li><a href="${createLink(controller:'login', action:'login')}">Iniciar Sesión</a></li>-->
                </ul>
                <a href="" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav><!-- Aqui termina la continuacion del nav desde layout/main.gsp -->
</head>

    <g:layoutBody/>


    <!-- Modal Structure -->
        <div id="modal1" class="modal">
            <div class="modal-content">
                <h4>Iniciar sesión</h4>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="nombreUsuario" type="text" name="correoUsuario" class="validate">
                        <label for="nombreUsuario">Correo Electrónic</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="passwordUsuario" type="password" name="contrañaUsuario" class="validate">
                        <label for="passwordUsuario">Contraseña</label>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="input-field col s4">
                    <g:submitButton class="btn-flat" name="ingresar" value="Ingresar" type="button"></g:submitButton>
                </div>
                <div class="input-field col s4">
                    <g:submitButton class="btn-flat" name="ingresar" value="Ingresar Con Facebook" type="button">Registrarme</g:submitButton>
                </div>
                <div class="input-field col s4">
                    <a href="#!" class=" modal-action modal-close waves-effect waves btn-flat">Cerrar</a>
                </div>
            </div>
        </div>
        <div id="modal2" class="modal">
            <div class="modal-content">
                <h4>Crear Cuenta</h4>
                <div class="row">
                    <g:form name="registro" class="col s12">
                        <div class="row">
                            <div class="input-field col s6">
                                <input id="first_name" type="text" name="nombresCliente" class="validate">
                                <label for="first_name">Nombres</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="last_name" type="text" name="apellidosCliente" class="validate">
                                <label for="last_name">Apellidos</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="email" type="email" name="correoCliente" class="validate">
                                <label for="email">Correo electrónico</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input id="password" type="password" name="contraseñaCliente" class="validate">
                                <label for="password">Contraseña</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="password2" type="password" name="contraseñaCliente2" class="validate">
                                <label for="password2">Repita la Contraseña</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s8">
                                <g:link class="btn-flat" controller="principal" action="registro" name="registrar" value="registrar" type="button" onclick="contraseñas()">Registrarme</g:link>
                            </div>
                            <div class="input-field col s4">
                                <a href="#!" class=" modal-action modal-close waves-effect waves btn-flat">Cerrar</a>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    <!--- Aqui va el footer-->
    <footer class="page-footer blue-grey lighten-1 z-depth-3">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                © 2014 Copyright Text
                <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
        </div>
    </footer>
<!--Import jQuery before materialize.js-->
<asset:javascript src="js/jquery-2.1.1.min.js"/>
<asset:javascript src="js/materialize.js"/>
<asset:javascript src="js/forms.js"/>
<script>

</script>
</body>
</html>
