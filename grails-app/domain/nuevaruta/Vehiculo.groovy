package nuevaruta

class Vehiculo {
    String patente, marca, modelo, chasis, año, valor, estado, descripcion, valorHoraExtra
    static belongsTo = [sucursal:Sucursal , tipoVehiculo:TipoVehiculo]
    static hasMany = [reserva:Reserva, imagen:Imagen]
    static constraints = {
        estado nullable: true, blank: true
        valor nullable: true, blank: true
    }
}
