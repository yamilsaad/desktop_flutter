class Usuario {
  final String nombre;
  final String apellido;
  final String dni;

  Usuario({required this.nombre, required this.apellido, required this.dni});

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      nombre: json['nombre'] ?? '',
      apellido: json['apellido'] ?? '',
      dni: json['dni'] ?? '',
    );
  }
}
