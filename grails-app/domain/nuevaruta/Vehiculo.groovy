package nuevaruta

class Vehiculo {
    String patente, marca, modelo, chasis, estado, descripcion
    Integer  año, valor, valorHoraExtra, kilometraje
    static belongsTo = [sucursal:Sucursal , tipoVehiculo:TipoVehiculo]
    static hasMany = [reserva:Reserva, imagen:Imagen]
    static constraints = {
        estado nullable: true, blank: true
        chasis nullable: true, blank: true
        kilometraje nullable: true, blank:true
    }
}
