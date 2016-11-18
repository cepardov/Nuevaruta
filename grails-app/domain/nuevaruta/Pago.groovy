package nuevaruta

class Pago {
    String banco, tipoCuenta, monto, observacion, estado
    static belongsTo = [reserva:Reserva, cliente:Cliente]
    static constraints = {
        estado nullable: true, blank: true
    }
}
