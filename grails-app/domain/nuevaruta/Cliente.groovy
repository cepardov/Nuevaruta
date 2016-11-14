package nuevaruta

class Cliente {
    String rut, nombres, paterno, materno, telefono, correo
    Date fechaCreacion, fehcaNacimiento
    Integer estado
    static belongsTo = []
    static hasMany = [reserva:Reserva, pago:Pago,contrato:Contrato]
    static constraints = {
    }
}
