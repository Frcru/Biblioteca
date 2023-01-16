import 'package:flutter/material.dart';
import 'package:biblioteca/infrastructure/entitymanager/e_usuario.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class frmListadoUsuarios extends StatefulWidget {
  @override
  State<frmListadoUsuarios> createState() => _frmListadoUsuariosState();
}

class _frmListadoUsuariosState extends State<frmListadoUsuarios> {
  @override
  e_usuario cn = e_usuario();

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: FutureBuilder(
      future: cn.selectE(),
      builder: ((context, AsyncSnapshot snapshot) {
        print("here ${snapshot.data.toString()}");
        if (snapshot.hasData == null &&
            snapshot.connectionState == ConnectionState.none) {}
        print("here ${snapshot.data.toString()}");
        return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  color: Colors.deepOrange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child:
                            Center(child: Text(snapshot.data![index]['login'])),
                      ),
                      IconButton(
                          onPressed: () {
                            cn.deleteE(snapshot.data[index]['id']);
                            setState(() {});
                          },
                          icon: const Icon(Icons.delete))
                    ],
                  ),
                ),
              );
            });
      }),
    ));
  }
}
