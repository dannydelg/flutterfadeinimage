import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider_fer/src/models/usuario.dart';

class MyFutureBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<ReqResEspuesta> getUsuarios() async {
      var url = Uri.parse('https://reqres.in/api/users');
      final resp = await http.get(url);
      print(resp.body);
      return reqResEspuestaFromJson(resp.body);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: FutureBuilder<ReqResEspuesta>(
        future: getUsuarios(),
        builder:
            (BuildContext context, AsyncSnapshot<ReqResEspuesta> snapshot) {
          print(snapshot.connectionState);
          if (snapshot.hasError) {
            print('SNAPSHOT HAS ERRORS');
            print(snapshot.error);
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListTile(title: _ListaUsuarios(snapshot.data.data));
          }
        },
      ),
    );
  }
}

class _ListaUsuarios extends StatelessWidget {
  final List<Usuario> usuarios;
  _ListaUsuarios(this.usuarios);

  @override
  Widget build(BuildContext context) {
    print(this.usuarios);
    return ListView.builder(
      itemCount: usuarios.length,
      itemBuilder: (BuildContext context, int i) {
        final user = usuarios[i];
        return FadeInLeft(
          delay: Duration(microseconds: 200 * i),
          child: ListTile(
            title: Text(
              '${user.firstName} ${user.lastName} ',
            ),
            subtitle: Text(user.email),
            trailing: Image.network(user.avatar),
          ),
        );
      },
    );
  }
}
