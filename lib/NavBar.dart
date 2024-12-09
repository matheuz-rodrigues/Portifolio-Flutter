import 'package:flutter/material.dart';
import 'package:portifolio/ConversorDeMoeda.dart';
import 'package:portifolio/TelaPortifolio.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[50],
      child: Container(
        height: double.infinity,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey[600],
                image: const DecorationImage(
                  image: AssetImage('imagens/fundo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: const Text('Matheus Rodrigues'),
              accountEmail: const Text('matheusrodriguesfilho.91@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'imagens/fotoperfil.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home_filled),
                    title: Text('Página Inicial'),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TelaPortifolio(),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Conversor de Moedas'),
                    //subtitle: const Text(''),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConversorDeMoedas(),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.android),
                    title: Text('Projeto 2'),
                    subtitle: const Text('Breve Descrição'),
                    onTap: () => null,
                  ),
                  ListTile(
                    leading: Icon(Icons.android),
                    title: Text('Projeto 2'),
                    subtitle: const Text('Breve Descrição'),
                    onTap: () => null,
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                leading: Icon(Icons.settings_rounded),
                title: Text('Configurações'),
                onTap: () => null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
