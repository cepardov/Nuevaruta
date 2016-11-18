package nuevaruta

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SucursalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sucursal.list(params), model:[sucursalCount: Sucursal.count()]
    }

    def show(Sucursal sucursal) {
        respond sucursal
    }

    def create() {
        respond new Sucursal(params)
    }

    @Transactional
    def save(Sucursal sucursal) {
        if (sucursal == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (sucursal.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond sucursal.errors, view:'create'
            return
        }

        sucursal.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), sucursal.id])
                redirect sucursal
            }
            '*' { respond sucursal, [status: CREATED] }
        }
    }

    def edit(Sucursal sucursal) {
        respond sucursal
    }

    @Transactional
    def update(Sucursal sucursal) {
        if (sucursal == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (sucursal.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond sucursal.errors, view:'edit'
            return
        }

        sucursal.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), sucursal.id])
                redirect sucursal
            }
            '*'{ respond sucursal, [status: OK] }
        }
    }

    @Transactional
    def delete(Sucursal sucursal) {

        if (sucursal == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        sucursal.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), sucursal.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
