import 'package:biblioteca/domain/entities/tipo_usuario.dart';
import 'package:biblioteca/infrastructure/controladores/conexion.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class c_tipo_usuario {
  //
  Future select() async {
    try {
      PostgrestResponse? response = await SupabaseCredentials.supabaseClient
          .from('tipo_usuarios')
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

  Future insert(tipo_usuario tusuario) async {
    try {
      PostgrestResponse? response = await SupabaseCredentials.supabaseClient
          .from('tipo_usuarios')
          .insert({
        'codigo': '${tusuario.codigo}',
        'nombre': '${tusuario.nombre}'
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

  Future update(tipo_usuario tusuario) async {
    try {
      PostgrestResponse? response = await SupabaseCredentials.supabaseClient
          .from('tipo_usuarios')
          .update({'nombre': '${tusuario.nombre}'}).match(
              {'codigo': '${tusuario.codigo}'}).execute();
      if (response.data != null) {
        print(response.data);
      } else {
        print(response.status);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future delete(tipo_usuario tusuario) async {
    try {
      PostgrestResponse? response = await SupabaseCredentials.supabaseClient
          .from('tipo_usuarios')
          .delete()
          .match({'codigo': '${tusuario.codigo}'}).execute();
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
