import 'package:biblioteca/domain/entities/usuario.dart';
import 'package:biblioteca/infrastructure/controladores/conexion.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class c_usuario {
  //
  Future<List?> select() async {
    try {
      var response = await Supabase.instance.client.from('usuarios').select();
      print('Response data $response');
      final dataList = response as List;
      return dataList;
    } catch (e) {
      print(e.toString());
    }
  }

  insert(usuario usuario) async {
    try {
      await Supabase.instance.client.from('usuarios').insert({
        'codigo': '${usuario.codigo}',
        'codigo_tipo_u': '${usuario.codigo_tipo}',
        'login': '${usuario.login}',
        'password': '${usuario.password}'
      });
    } catch (e) {
      print(e.toString());
    }
  }

  update(usuario usuario) async {
    try {
      await SupabaseCredentials.supabaseClient.from('usuarios').update({
        'codigo_tipo_u': '${usuario.codigo_tipo}',
        'login': '${usuario.login}',
        'password': '${usuario.password}'
      }).match({'codigo': '${usuario.codigo}'});
    } catch (e) {
      print(e.toString());
    }
  }

  delete(usuario usuario) async {
    try {
      PostgrestResponse? response = await SupabaseCredentials.supabaseClient
          .from('usuarios')
          .delete()
          .match({'codigo': '${usuario.codigo}'});
    } catch (e) {
      print(e.toString());
    }
  }
}
