package nuevaruta

import org.apache.tools.ant.taskdefs.Get

class PrincipalController {

    def index() {
        def tipovehiculo = TipoVehiculo.findAll()
        def sucursal = Sucursal.findAll()
        def vehiculo=null
        if(params.tipo&&params.sucursal&&params.fecharetiro&&params.fechadevolucion!=null){
            vehiculo=Vehiculo.executeQuery("from Vehiculo as v where v.sucursal="+params.sucursal+"and v.tipoVehiculo="+params.tipo)
        }
        [tipovehiculo:tipovehiculo, sucursal:sucursal, vehiculo:vehiculo]
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
    def reserva(){
        println "parametro" +params.id
    }
    def login(){
        def c=Cliente.findByCorreoAndClave(params.correoCliente,params.claveCliente)
    }
}
