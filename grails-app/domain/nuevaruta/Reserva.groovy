package nuevaruta

class Reserva {

    Date fechaInicio, fechaFin, fechaCreacion, estado
    static belongsTo = [vehiculo:Vehiculo, cliente:Cliente]
    static hasMany = [pago:Pago]
    static constraints = {
        estado nullable: true, blank: true
    }
}
