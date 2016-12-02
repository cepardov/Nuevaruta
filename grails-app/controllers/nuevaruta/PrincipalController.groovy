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
                flash.message= "error al crear el Cliente por favor Vuelva a intentarlo mas tarde"
                redirect(action:"index")
            }
        }else{
            flash.message= "El cliente ha sido creado exitosamente y a inciado su sesion"
            session.clienteLogeado = c
            redirect(action:"index")
        }

    }
    def reserva(){
        println "parametro" +params.id
    }
    def login(){
        def c=Cliente.findByCorreoAndClave(params.correoCliente,params.claveCliente)
        if(c){
            session.clienteLogeado = c
            println     "cliente: "+c.nombres
            flash.message = "Sesión iniciada correctamente"
            redirect controller: "principal", action: "index"
        }else{
            flash.message = "No podemos encontrarte, REGISTRATE POR FAVOR"
            redirect controller: "principal", action: "index"
        }
    }
    def logout (){
        session.invalidate()
        flash.message = "Sesión cerrada correctamente"
        redirect controller: "principal", action: "index"
    }
}
