import 'package:biblioteca/domain/entities/tipo_usuario.dart';
import 'package:biblioteca/infrastructure/controladores/conexion.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class c_tipo_usuario {
  //
  void select() async {
    //Verificar si hace falta toString()
    final data = await supabase.from('tipo_usuarios').select('*').toString();
  }

  void insert(tipo_usuario tusuario) async {
    final data = await supabase.from('tipo_usuarios').insert(
        {'codigo': '${tusuario.codigo}', 'nombre': '${tusuario.nombre}'});
  }

  void update(tipo_usuario tusuario) async {
    final data = await supabase
        .from('tipo_usuarios')
        .update({'nombre': '${tusuario.nombre}'}).match(
            {'codigo': '${tusuario.codigo}'});
  }

  void delete(tipo_usuario tusuario) async {
    final data = await supabase
        .from('tipo_usuarios')
        .delete()
        .match({'codigo': '${tusuario.codigo}'});
  }
}
