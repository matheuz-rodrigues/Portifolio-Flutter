import 'package:flutter/material.dart';
import 'utils.dart';
import 'package:portifolio/TelaPortifolio.dart';

class ConversorDeMoedas extends StatelessWidget {
  const ConversorDeMoedas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: Whatsappbtn(),
      drawer: Drawer(
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
                      title: Text('Projeto 1'),
                      subtitle: const Text('Breve Descrição'),
                      onTap: () => null,
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
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 45,
        ),
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: const Text(
          'Conversor de Moedas com Python',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: Builder(
          builder: (context) => Tooltip(
            message: 'Abrir Menu de Projetos',
            child: IconButton(
              padding: const EdgeInsets.only(left: 10),
              icon: const Icon(Icons.menu_rounded),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        width: double.maxFinite,
        height: double.maxFinite,
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}
