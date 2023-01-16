import 'package:biblioteca/domain/entities/usuario.dart';
import 'package:biblioteca/infrastructure/controladores/conexion.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class c_usuario {
  //
  Future select() async {
    try {
      PostgrestResponse? response = await SupabaseCredentials.supabaseClient
          .from('usuarios')
          .select()
          .execute();
      if (response.data != null) {
        print(response.data);
      } else {
        print(response.status);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future insert(usuario usuario) async {
    try {
      PostgrestResponse? response =
          await SupabaseCredentials.supabaseClient.from('usuarios').insert({
        'codigo': '${usuario.codigo}',
        'codigo_tipo_u': '${usuario.codigo_tipo}',
        'login': '${usuario.login}',
        'password': '${usuario.password}'
      }).execute();
      if (response.data != null) {
        print(response.data);
      } else {
        print(response.status);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future update(usuario usuario) async {
    try {
      PostgrestResponse? response =
          await SupabaseCredentials.supabaseClient.from('usuarios').update({
        'codigo_tipo_u': '${usuario.codigo_tipo}',
        'login': '${usuario.login}',
        'password': '${usuario.password}'
      }).match({'codigo': '${usuario.codigo}'}).execute();
      if (response.data != null) {
        print(response.data);
      } else {
        print(response.status);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future delete(usuario usuario) async {
    try {
      PostgrestResponse? response = await SupabaseCredentials.supabaseClient
          .from('usuarios')
          .delete()
          .match({'codigo': '${usuario.codigo}'}).execute();
      if (response.data != null) {
        print(response.data);
      } else {
        print(response.status);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
