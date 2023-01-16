class UserProfile {
  final String nombre;
  final String apellido;
  final String estado;
  final DateTime fechaCreacion;
  final String distrito;

  UserProfile({
    required this.estado,
    required this.nombre,
    required this.fechaCreacion,
    required this.distrito,
    required this.apellido,
  });
}

final user = UserProfile(
  nombre: '',
  apellido: '',
  estado: '',
  fechaCreacion: DateTime.now(),
  distrito: '',
);
