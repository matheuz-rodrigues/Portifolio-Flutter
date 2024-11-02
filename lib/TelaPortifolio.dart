import 'package:flutter/material.dart';
import 'package:portifolio/NavBar.dart';

class TelaPortifolio extends StatelessWidget {
  const TelaPortifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      drawer: Navbar(),
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: IconThemeData(color: Colors.white, size: 50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: const Text(
          'Matheuz Rodriguez',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: Builder(
          builder: (context) => Tooltip(
            message: 'Abrir Menu',
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {

                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
      ),
    );
  }
}
