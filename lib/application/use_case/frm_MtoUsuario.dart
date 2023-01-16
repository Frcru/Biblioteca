import 'package:flutter/material.dart';

class frmMtoUsuario extends StatefulWidget {
  @override
  State<frmMtoUsuario> createState() => _frmMtoUsuarioState();
}

class _frmMtoUsuarioState extends State<frmMtoUsuario> {
  final _formKey = GlobalKey<FormState>();

  final _codigo = TextEditingController();
  final _tipo = TextEditingController();
  final _logueo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          'Mto usuario',
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
                            decoration: InputDecoration(labelText: 'Codigo'),
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
                        Spacer(),
                        // IconButton(
                        //     tooltip: 'Buscar',
                        //     onPressed: () {},
                        //     icon: Icon(Icons.search)),
                        Spacer(),
                        // IconButton(
                        //     tooltip: 'Limpiar campos',
                        //     onPressed: () {
                        //       _nombreController.text = '';
                        //       _descripcionController.text = '';
                        //       _imagenController.text = '';
                        //       _stockController.text = '';
                        //       _precioController.text = '';
                        //     },
                        //     icon: Icon(Icons.border_clear))
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Tipo de usuario'),
                      controller: _tipo,
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
                          InputDecoration(labelText: 'Usuario de login'),
                      controller: _logueo,
                      maxLength: 150,
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
