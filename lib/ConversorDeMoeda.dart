import 'package:flutter/material.dart';
import 'package:portifolio/NavBar.dart';

class ConversorDeMoedas extends StatelessWidget {
  const ConversorDeMoedas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: IconThemeData(color: Colors.white, size: 50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: const Text(
          'Conversos de Moedas',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: Builder(
          builder: (context) => Tooltip(
            message: 'Abrir Menu de Projetos',
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {

                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
      ),
      body: const Center(child: Text('Olá mundo'),),
    );
  }
}