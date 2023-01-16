import 'package:biblioteca/domain/entities/usuario.dart';
import 'package:biblioteca/infrastructure/controladores/c_usuario.dart';

class e_usuario {
  c_usuario ec = c_usuario();
  e_usuario() {
    ec = c_usuario();
  }
  void selectE() {
    ec.select();
  }

  void insertE(String codigo, String cod_tipo, String login, String password) {
    ec.insert(usuario(codigo, cod_tipo, login, password));
  }

  void updateE(String codigo, String cod_tipo, String login, String password) {
    ec.update(usuario(codigo, cod_tipo, login, password));
  }

  void deleteE(String codigo) {
    ec.delete(usuario(codigo, '', '', ''));
  }
}
