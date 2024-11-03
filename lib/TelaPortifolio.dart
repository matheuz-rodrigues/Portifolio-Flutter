import 'package:flutter/material.dart';
import 'package:portifolio/NavBar.dart';
import 'utils.dart';

class TelaPortifolio extends StatelessWidget {
  const TelaPortifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Whatsappbtn(),
      backgroundColor: Colors.blueGrey,
      drawer: Navbar(),
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 45,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: const Text(
          'Matheus Rodrigues',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: Builder(
          builder: (context) => Tooltip(
            message: 'Abrir Menu de Projetos',
            child: IconButton(
              padding: EdgeInsets.only(left: 20),
              icon: Icon(Icons.menu_rounded),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
      ),
      body: Container(
        child: const Column(
          children: [
          ],
        ),
      ),
    );
  }
}
