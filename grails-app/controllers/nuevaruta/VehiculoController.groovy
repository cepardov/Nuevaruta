package nuevaruta

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VehiculoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Vehiculo.list(params), model:[vehiculoCount: Vehiculo.count()]
    }

    def show(Vehiculo vehiculo) {
        respond vehiculo
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
