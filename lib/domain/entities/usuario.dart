class usuario {
  String _codigo = '', _cod_tipo = '', _login = '', _password = '';
  usuario(String cod, String ct, String log, String pass) {
    _codigo = cod;
    _cod_tipo = ct;
    _login = log;
    _password = pass;
  }

  String get codigo => _codigo;

  set codigo(String str) {
    _codigo = str;
  }

  String get codigo_tipo => _cod_tipo;

  set codigo_tipo(String str) {
    _cod_tipo = str;
  }

  String get login => _login;

  set login(String str) {
    _login = str;
  }

  String get password => _password;

  set password(String str) {
    _password = str;
  }
}