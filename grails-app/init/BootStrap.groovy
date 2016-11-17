import nuevaruta.Sucursal
import nuevaruta.Usuario

class BootStrap {

    def init = {
        if (!Usuario.count()){
            new Usuario(rut: "18.279.378-3",
                    nombres: "Pablo Andrés",
                    paterno: "Zumelzu",
                    materno: "Zumelzu",
                    correo: "pablo@zumelzu.cl",
                    telefono: "1234456768",
                    tipo: "administrador",
                    estado: "activo"
            ).save(failOnError:true)
        }
        if (!Sucursal.count()){
            new Sucursal(rut: "76.816.854-3",
                    nombre: "nuevaRuta Puerto Montt",
                    direccion: "Puerto Montt, #376, alerce sur",
                    logo: "/img/logo.png",
                    region: "Puerto Montt",
                    ciudad: "Puerto Montt",
                    fono: "123456689",
                    usuario: "1"
            ).save(failOnError:true)
        }

    }
    def destroy = {
    }
}
