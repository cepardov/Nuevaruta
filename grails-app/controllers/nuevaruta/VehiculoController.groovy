package nuevaruta

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VehiculoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max,Vehiculo vehiculo) {
        def vehiculos = Vehiculo.list(params);
        params.max = Math.min(max ?: 10, 100)
        if(params.id!=null){
            respond vehiculo, model:[vehiculoCount: Vehiculo.count(), vehiculoList:vehiculos]
        }else{
            respond new Vehiculo(params), model:[vehiculoCount: Vehiculo.count(), vehiculoList:vehiculos]
        }

    }

    def show(Vehiculo vehiculo) {
        redirect(controller:"vehiculo", action: "index")
        flash.message = message(code: 'default.created.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculo.id, vehiculo.marca, vehiculo.modelo])
    }

    def create() {
        respond new Vehiculo(params)
    }

    @Transactional
    def save(Vehiculo vehiculo) {
        if (vehiculo == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (vehiculo.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond vehiculo.errors, view:'create'
            return
        }
        vehiculo.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculo.id])
                redirect vehiculo
            }
            '*' { respond vehiculo, [status: CREATED] }
        }
    }

    def edit(Vehiculo vehiculo) {
        respond vehiculo
    }
    def eliminar(){
        def vehiculo = Vehiculo.get(params.id)
        vehiculo.delete(flush:true)
        redirect (controller: "vehiculo", action: "index")
        flash.message = message(code: 'default.deleted.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculo.id, vehiculo.marca, vehiculo.modelo])
    }

    @Transactional
    def update(Vehiculo vehiculo) {
        if (vehiculo == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (vehiculo.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond vehiculo.errors, view:'edit'
            return
        }

        vehiculo.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculo.id])
                redirect vehiculo
            }
            '*'{ respond vehiculo, [status: OK] }
        }
    }

    @Transactional
    def delete(Vehiculo vehiculo) {

        if (vehiculo == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        vehiculo.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculo.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
