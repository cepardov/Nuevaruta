package nuevaruta

class Cliente {
    String rut, nombres, paterno, materno, telefono, correo, estado
    Date fechaCreacion, fehcaNacimiento
    static belongsTo = []
    static hasMany = [reserva:Reserva, pago:Pago,contrato:Contrato]
    static constraints = {
        estado nullable: true, blank: true
    }
}
