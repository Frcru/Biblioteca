import 'package:flutter/material.dart';

class frmMtoLector extends StatefulWidget {
  @override
  State<frmMtoLector> createState() => _frmMtoLectorState();
}

class _frmMtoLectorState extends State<frmMtoLector> {
  final _formKey = GlobalKey<FormState>();

  final _codigo = TextEditingController();
  final _codigousuario = TextEditingController();
  final _coddistrito = TextEditingController();
  final _nombres = TextEditingController();
  final _apellidos = TextEditingController();
  final _dni = TextEditingController();
  final _estado = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          'Mto Lector',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Form(
        key: _formKey,
        child: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 250,
                          child: TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Codigo de Lector'),
                            controller: _codigo,
                            maxLength: 50,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Por favor ingresar datos';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Codigo de usuario'),
                      controller: _codigousuario,
                      maxLength: 50,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor ingresar datos';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Distrito residencia'),
                      controller: _coddistrito,
                      maxLength: 150,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor ingresar datos';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Nombres'),
                      controller: _nombres,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor ingresar datos';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Apellidos'),
                      controller: _apellidos,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor ingresar datos';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'DNI'),
                      controller: _dni,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor ingresar datos';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Estado'),
                      controller: _estado,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor ingresar datos';
                        }
                        return null;
                      },
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {}
                              },
                              child: Text('Confirmar'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {}
                              },
                              child: Text('Actualizar'),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
