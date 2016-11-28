package nuevaruta

class Vehiculo {
    String patente, marca, modelo, chasis, año, valor, estado, descripcion, valorHoraExtra
    static belongsTo = [sucursal:Sucursal]
    static hasMany = [reserva:Reserva, imagen:Imagen]
    static constraints = {
        estado nullable: true, blank: true
    }
}
