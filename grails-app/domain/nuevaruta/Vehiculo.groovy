package nuevaruta

class Vehiculo {
    String patente, marca, modelo, chasis, año, valor
    static belongsTo = [sucursal:Sucursal]
    static hasMany = [reserva:Reserva]
    static constraints = {
    }
}
