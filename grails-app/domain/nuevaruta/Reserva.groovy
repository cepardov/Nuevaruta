package nuevaruta

class Reserva {

    Date fechaInicio, fechaFin, fechaCreacion
    static belongsTo = [vehiculo:Vehiculo, cliente:Cliente]
    static hasMany = [pago:Pago]
    static constraints = {
    }
}
