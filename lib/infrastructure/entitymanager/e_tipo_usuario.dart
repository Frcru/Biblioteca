import 'package:biblioteca/domain/entities/tipo_usuario.dart';
import 'package:biblioteca/infrastructure/controladores/c_tipo_usuario.dart';

class e_tipo_usuario {
  c_tipo_usuario ec = c_tipo_usuario();
  e_tipo_usuario() {
    ec = c_tipo_usuario();
  }
  void selectE() {
    ec.select();
  }

  void insertE(String codigo, String nombre) {
    ec.insert(tipo_usuario(codigo, nombre));
  }

  void updateE(String codigo, String nombre) {
    ec.update(tipo_usuario(codigo, nombre));
  }

  void deleteE(String codigo) {
    ec.delete(tipo_usuario(codigo, ''));
  }
}
