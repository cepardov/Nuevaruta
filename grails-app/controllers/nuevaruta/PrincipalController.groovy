package nuevaruta

import org.apache.tools.ant.taskdefs.Get

class PrincipalController {

    def index() {

    }
    def facebook(){

    }
    def registro(){
        def c= new Cliente(nombres: params.nombresCliente,correo: params.correoCliente, paterno: params.apellidosCliente, clave: params.contrasenaCliente)
        c.save(flush:true)
        if(!c.save()){
            c.errors.each {
                println it
            }
        }
        flash.message= "usuario"
        redirect(action:"index")
    }
}
