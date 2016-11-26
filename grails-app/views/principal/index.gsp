<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="row"><!-- Base de la zona del contenido sector blanco -->
    <div class="col s12 m3"><!-- Zona lateral izquerda -->
        <div class="row">
            <div class="row">
                <div class="col s12">
                    <div class="card-panel teal white-text z-depth-4">
                        <div class="row">
                            <form class="col s12">
                                <div class="input-field col s12">
                                    <select>
                                        <option value="" disabled selected>Elija opcion</option>
                                        <option value="1">Option 1</option>
                                        <option value="2">Option 2</option>
                                        <option value="3">Option 3</option>
                                    </select>
                                    <label class="white-text">Categorias</label>
                                </div>
                                <div class="input-field col s12">
                                    <select>
                                        <option value="" disabled selected>Elija opcion</option>
                                        <option value="1">Option 1</option>
                                        <option value="2">Option 2</option>
                                        <option value="3">Option 3</option>
                                    </select>
                                    <label class="white-text">Arriendo de movil en</label>
                                    <p class="left-align">
                                        <input type="checkbox" class="filled-in" id="filled-in-box" checked="checked" />
                                        <label for="filled-in-box" class="white-text">Devolver en otra sucursal</label>
                                    </p>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <div class="card-panel teal z-depth-4">
                        <span class="white-text">
                            <span class="card-title">Card Title</span>
                            Environment: ${grails.util.Environment.current.name}<br>
                            App profile: ${grailsApplication.config.grails?.profile}<br>
                            Grails version: <g:meta name="info.app.grailsVersion"/><br>
                            Groovy version: ${GroovySystem.getVersion()}<br>
                            JVM version: ${System.getProperty('java.version')}<br>
                            Reloading active: ${grails.util.Environment.reloadingAgentEnabled}<br><br>
                            <a class="btn tooltipped" data-position="right" data-tooltip="Esto prueba un mensaje de informacion de prueba" onclick="Materialize.toast('Se esta incluyendo la funciones de mensajes', 5000,'')">Test de mesajes</a>
                            <br></br>
                            <!-- Modal Trigger -->
                            <a class="tooltipped waves-effect waves-light btn" data-position="right" data-tooltip="Abre un modal" href="#modal1">Test Modal</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="slider card-panel z-depth-0 col s12 m9"><!-- Contenido derecho -->
        <ul class="slides">
            <li>
                <img src="http://lorempixel.com/580/250/nature/1"> <!-- random image -->
                <div class="caption center-align">
                    <h3>This is our big Tagline!</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <img src="http://lorempixel.com/580/250/nature/2"> <!-- random image -->
                <div class="caption left-align">
                    <h3>Left Aligned Caption</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <img src="http://lorempixel.com/580/250/nature/3"> <!-- random image -->
                <div class="caption right-align">
                    <h3>Right Aligned Caption</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <img src="http://lorempixel.com/580/250/nature/4"> <!-- random image -->
                <div class="caption center-align">
                    <h3>This is our big Tagline!</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
        </ul>
    </div>
</div>



<script>

</script>
</body>
</html>