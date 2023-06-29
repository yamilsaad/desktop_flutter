import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/model.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  List<Usuario> usuarios = [];
  bool isLoading = false;

  Future<void> fetchUsuarios() async {
    setState(() {
      isLoading = true;
    });

    final response = await http.get(Uri.parse(
        'http://192.168.1.102:8080/datasnap/rest/TSFHWebSvr/usuario'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      final List<Usuario> fetchedUsuarios =
          data.map((json) => Usuario.fromJson(json)).toList();

      setState(() {
        usuarios = fetchedUsuarios;
      });
    } else {
      // Maneja el error de la solicitud HTTP
      print('Error: ${response.statusCode}');
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchUsuarios();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar Usuarios'),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: usuarios.length,
              itemBuilder: (BuildContext context, int index) {
                final usuario = usuarios[index];
                return ListTile(
                  title: Text(usuario.nombre),
                  subtitle: Text('${usuario.apellido}\nDNI: ${usuario.dni}'),
                );
              },
            ),
    );
  }
}
