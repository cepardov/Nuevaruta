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
                flash.message= "error"
                redirect(action:"index")
            }
        }else{
            flash.message= "creado"
            redirect(action:"index")
        }

    }
    def login(){
        def c=Cliente.findByCorreoAndClave(params.correoCliente,params.claveCliente)
    }
}
