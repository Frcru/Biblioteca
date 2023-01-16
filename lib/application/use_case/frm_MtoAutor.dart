import 'package:flutter/material.dart';

class frmMtoAutor extends StatefulWidget {
  @override
  State<frmMtoAutor> createState() => _frmMtoAutorState();
}

class _frmMtoAutorState extends State<frmMtoAutor> {
  final _formKey = GlobalKey<FormState>();

  final _codigo = TextEditingController();
  final _nombres = TextEditingController();
  final _apellidos = TextEditingController();
  final _nacionalidad = TextEditingController();

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
      body: SingleChildScrollView(
        child: Form(
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
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Codigo de Autor'),
                        controller: _codigo,
                        maxLength: 50,
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
                        maxLength: 150,
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
                        decoration: InputDecoration(labelText: 'Nacionalidad'),
                        controller: _nacionalidad,
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
      ),
    );
  }
}
