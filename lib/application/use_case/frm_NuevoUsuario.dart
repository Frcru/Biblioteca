import 'package:flutter/material.dart';

class frmNuevoUsuario extends StatefulWidget {
  @override
  State<frmNuevoUsuario> createState() => _frmNuevoUsuarioState();
}

class _frmNuevoUsuarioState extends State<frmNuevoUsuario> {
  final _formKey = GlobalKey<FormState>();

  final _cantidadController = TextEditingController();

  final _descripcionController = TextEditingController();

  final _imagenController = TextEditingController();

  final _nombreController = TextEditingController();

  final _precioController = TextEditingController();

  final _stockController = TextEditingController();

  final _pesoController = TextEditingController();

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
                              decoration: InputDecoration(labelText: 'Nombre'),
                              controller: _nombreController,
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
                        decoration: InputDecoration(labelText: 'Descripción'),
                        controller: _descripcionController,
                        maxLength: 50,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor ingresar datos';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Imagen'),
                        controller: _imagenController,
                        maxLength: 150,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor ingresar datos';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Precio'),
                        controller: _precioController,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor ingresar datos';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Stock'),
                        controller: _stockController,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor ingresar datos';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Peso'),
                        controller: _pesoController,
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
