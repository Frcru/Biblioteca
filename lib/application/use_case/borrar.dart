import 'package:flutter/material.dart';
import 'package:biblioteca/infrastructure/entitymanager/e_tipo_usuario.dart';

class frmManTipoUsuario extends StatefulWidget {
  State<frmManTipoUsuario> createState() => _frmManTipoUsuarioState();
}

final txtcodTU = TextEditingController();
final txtnomTU = TextEditingController();

class _frmManTipoUsuarioState extends State<frmManTipoUsuario> {
  @override
  e_tipo_usuario cn = e_tipo_usuario();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TipoUsuario'),
      ),
      body: Column(children: [
        TextField(
          controller: txtcodTU,
        ),
        TextField(
          controller: txtnomTU,
        ),
        ElevatedButton(
            onPressed: () => cn.insertE(txtcodTU.text, txtnomTU.text),
            child: Text('Insertar')),
        ElevatedButton(
            onPressed: () => cn.updateE(txtcodTU.text, txtnomTU.text),
            child: Text('Modificar')),
        ElevatedButton(
            onPressed: () => cn.deleteE(txtcodTU.text),
            child: Text('Eliminar')),
        ElevatedButton(onPressed: () => cn.selectE(), child: Text('Listar')),
      ]),
    );
  }
}
