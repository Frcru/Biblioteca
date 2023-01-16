class usuario {
  String _codigo = '', _cod_tipo = '', _logueo = '', _clave = '';
  usuario(String cod, String ct, String log, String cla) {
    _codigo = cod;
    _cod_tipo = ct;
    _logueo = log;
    _clave = cla;
  }

  String get Codigo => _codigo;

  set Codigo(String str) {
    _codigo = str;
  }

  String get Codigo_tipo => _cod_tipo;

  set Codigo_tipo(String str) {
    _cod_tipo = str;
  }

  String get Logueo => _logueo;

  set Logueo(String str) {
    _logueo = str;
  }

  String get Clave => _clave;

  set Clave(String str) {
    _clave = str;
  }
}