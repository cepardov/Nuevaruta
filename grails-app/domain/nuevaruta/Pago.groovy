package nuevaruta

class Pago {
    String banco, tipoCuenta, monto, observacion
    static belongsTo = [reserva:Reserva, cliente:Cliente]
    static constraints = {
    }
}
