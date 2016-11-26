package nuevaruta

class PrincipalController {

    def index() {

    }
    def facebook(){

    }
    def registro(){
        println "Password1: "+params.contraseñaCliente
        println "Password2: "+params.contraseñaCliente2
        redirect(action:"index")
    }
}
