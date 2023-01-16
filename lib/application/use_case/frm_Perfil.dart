import 'package:flutter/material.dart';

import '../../infrastructure/entitymanager/e_perfil.dart';

class frmPerfil extends StatelessWidget {
  const frmPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(color: Colors.black),
          title: Text(
            'Mto Producto',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              child: Image.network(
                  'https://img.freepik.com/vector-premium/perfil-hombre-dibujos-animados_18591-58482.jpg?w=2000'),
            ),
            Text('Nombre: ${user.nombre}'),
            Text('Apellido: ${user.apellido}'),
            Text('Estado: ${user.estado}'),
            Text('Fecha Creacion: ${user.fechaCreacion}'),
            Text('Distrito: ${user.distrito}'),
          ],
        ),
      ),
    );
  }
}
