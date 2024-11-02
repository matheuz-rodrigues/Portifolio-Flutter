import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[50],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey[600],
              image: const DecorationImage(
                  image: AssetImage('imagens/fundo.jpg'), fit: BoxFit.cover),
            ),
            accountName: const Text('Matheuz Rodriguez'),
            accountEmail: const Text('matheusrodriguesfilho.91@gmail.com'),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset(
                'imagens/fotoperfil.png',
              ),
            )),
          ),
        ],
      ),
    );
  }
}
