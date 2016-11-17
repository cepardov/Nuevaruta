package nuevaruta

class Usuario {
    String rut, nombres, paterno, materno, telefono, correo, tipo
    Date fechaCreacion, fehcaNacimiento
    Integer estado
    static hasMany = [sucursal:Sucursal]
    static constraints = {
    }
}
