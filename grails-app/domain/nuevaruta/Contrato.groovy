package nuevaruta

class Contrato {
    String pactos, monto, montoGarantia, aceptacion, estado
    Date fechaInicio, fechaTermino
    static belongsTo = [sucursal:Sucursal,cliente:Cliente]
    static hasMany = []
    static constraints = {
        estado nullable: true, blank: true
    }
}
