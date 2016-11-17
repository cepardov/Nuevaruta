package nuevaruta

class Sucursal {
    String rut, direccion, nombre, logo, region, ciudad, fono
    static belongsTo = [usuario:Usuario]
    static hasMany = [contrato:Contrato, vehiculo:Vehiculo]
    static constraints = {
    }
}
