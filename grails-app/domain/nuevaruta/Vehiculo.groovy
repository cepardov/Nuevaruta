package nuevaruta

class Vehiculo {
    String patente, marca, modelo, chasis, año, valor, estado, descripcion
    static belongsTo = [sucursal:Sucursal]
    static hasMany = [reserva:Reserva]
    static constraints = {
        estado nullable: true, blank: true
    }
}
