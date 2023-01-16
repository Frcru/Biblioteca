import 'package:flutter/material.dart';

class frmMtoLibros extends StatefulWidget {
  @override
  State<frmMtoLibros> createState() => _frmMtoLibrosState();
}

class _frmMtoLibrosState extends State<frmMtoLibros> {
  final _formKey = GlobalKey<FormState>();

  final _codigo = TextEditingController();
  final _codautor = TextEditingController();
  final _nombre = TextEditingController();
  final _isbn = TextEditingController();
  final _copias = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          'Mto Libros',
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
                      Row(
                        children: [
                          Container(
                            width: 250,
                            child: TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Codigo de Libro'),
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
                        decoration: InputDecoration(labelText: 'Autor'),
                        controller: _codautor,
                        maxLength: 50,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor ingresar datos';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Nombre'),
                        controller: _nombre,
                        maxLength: 150,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor ingresar datos';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'ISBN'),
                        controller: _isbn,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor ingresar datos';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: '# Copias'),
                        controller: _copias,
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
