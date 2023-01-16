import 'dart:math';

import 'package:biblioteca/application/widgets/data.dart';
import 'package:flutter/material.dart';

class BibliotecaFrm extends StatefulWidget {
  const BibliotecaFrm({super.key});

  @override
  State<BibliotecaFrm> createState() => _BibliotecaFrmState();
}

class _BibliotecaFrmState extends State<BibliotecaFrm> {
  final _controller = PageController();
  final _notifierScroll = ValueNotifier(0.0);

  void _listener() {
    _notifierScroll.value = _controller.page!;
  }

  @override
  void initState() {
    _controller.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bookHeight = size.height * 0.4;
    final bookwidth = size.width * 0.5;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Libreria'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          width: size.width * 0.6,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Stack(
                    children: [
                      Text('Menu opciones'),
                      Container(
                        child: Image.network(
                          'https://thumbs.dreamstime.com/b/estante-del-fondo-con-la-biblioteca-vector-de-libros-los-vectores-stand-carcasa-madera-sitio-bibliotecario-universidad-o-escuela-201998180.jpg',
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text('Solicitar libro'),
                      Spacer(),
                      Icon(Icons.money_off)
                    ],
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [Text('Catalogo'), Spacer(), Icon(Icons.book)],
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text('Agregados'),
                      Spacer(),
                      Icon(Icons.book_rounded)
                    ],
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [Text('Estado'), Spacer(), Icon(Icons.money_off)],
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                'https://images.homify.com/c_fill,f_auto,q_0,w_740/v1585646718/p/photo/image/3399133/1E0A8669_copia.jpg',
                fit: BoxFit.fill,
              ),
            ),
            // SizedBox(
            //   height: kToolbarHeight,
            //   child: AppBar(
            //     leading: Drawer(
            //       child: ListView(
            //         children: [
            //           // DrawerHeader(child: Text('Menu opciones')),
            //           ListTile(
            //             title: Text('data'),
            //             onTap: () {},
            //           ),
            //           ListTile(
            //             title: Icon(Icons.verified_user),
            //             onTap: () {},
            //           ),
            //           ListTile(
            //             title: Icon(Icons.history),
            //             onTap: () {},
            //           ),
            //           ListTile(
            //             title: Icon(Icons.book),
            //             onTap: () {},
            //           ),
            //         ],
            //       ),
            //     ),
            //     title: Text(
            //       'Coleccion Libros',
            //       style: TextStyle(color: Colors.black),
            //     ),
            //     centerTitle: true,
            //     elevation: 0,
            //     backgroundColor: Colors.white,
            //   ),
            // ),
            ValueListenableBuilder<double>(
                valueListenable: _notifierScroll,
                builder: (context, value, _) {
                  return PageView.builder(
                    itemCount: books.length,
                    controller: _controller,
                    itemBuilder: ((context, index) {
                      final book = books[index];
                      final percentage = index - value;
                      final rotation = percentage.clamp(0.0, 1.0);
                      final fixRotation = pow(rotation, 0.35);
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Stack(
                              children: [
                                Container(
                                  height: bookHeight,
                                  width: bookwidth,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 20,
                                          offset: Offset(5.0, 5.0),
                                          spreadRadius: 10,
                                        )
                                      ]),
                                ),
                                Transform(
                                  alignment: Alignment.centerLeft,
                                  transform: Matrix4.identity()
                                    ..setEntry(3, 2, 0.002)
                                    ..rotateY(1.8 * fixRotation)
                                    ..translate(-rotation * size.width * 0.8)
                                    ..scale(1 + rotation),
                                  child: Image.network(
                                    book.image,
                                    fit: BoxFit.cover,
                                    height: bookHeight,
                                    width: bookwidth,
                                  ),
                                ),
                              ],
                            )),
                            SizedBox(height: 90),
                            Opacity(
                              opacity: 1 - rotation,
                              child: Column(
                                children: [
                                  Text(
                                    book.title,
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Escritor por ${book.author}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
