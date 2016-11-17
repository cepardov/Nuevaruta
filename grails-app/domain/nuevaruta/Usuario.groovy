package nuevaruta

class Usuario {
    String rut, nombres, paterno, materno, telefono, correo, tipo
    Date fechaCreacion, fechaNacimiento
    Integer estado
    static hasMany = [sucursal:Sucursal]
    static constraints = {
        fechaCreacion nullable: true, blank:true
        fechaNacimiento nullable: true, blank:true
    }
}
