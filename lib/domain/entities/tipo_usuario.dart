class tipo_usuario {
  String _codigo = '', _nombre = "";

  tipo_usuario(String cod, String nom) {
    _codigo = cod;
    _nombre = nom;
  }

  String get codigo => _codigo;

  set codigo(String str) {
    _codigo = str;
  }

  String get nombre => _nombre;

  set nombre(String str) {
    _nombre = str;
  }
}
