import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class frmArriendoLibro extends StatefulWidget {
  @override
  State<frmArriendoLibro> createState() => _frmArriendoLibroState();
}

class _frmArriendoLibroState extends State<frmArriendoLibro> {
  final _formKey = GlobalKey<FormState>();

  final _fecha = TextEditingController();
  DateTime? _date;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(color: Colors.black),
          title: Text(
            'Arriendo de Libros',
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
                      TextFormField(
                        controller: _fecha,
                        decoration: InputDecoration(
                            labelText: 'Establecer fecha de entrega'),
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate: _date ?? DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100),
                          );
                          if (date != null) {
                            setState(() {
                              _date = date;
                            });
                            _fecha.text = DateFormat.yMMMd().format(date);
                          }
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please select a date';
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
                        ),
                      ),
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
