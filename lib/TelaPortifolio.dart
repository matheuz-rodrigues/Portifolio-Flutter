import 'package:flutter/material.dart';
import 'package:portifolio/NavBar.dart';
import 'utils.dart';


class TelaPortifolio extends StatelessWidget {
  const TelaPortifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: Whatsappbtn(),
      drawer: Navbar(),
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 45,
        ),
        /*shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)),
        ),*/
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
              padding: EdgeInsets.only(left: 10),
              icon: Icon(Icons.menu_rounded),
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
         borderRadius: BorderRadius.all(Radius.circular(15))
         
         /* borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),*/
        ),
        width: double.maxFinite,
        height: double.maxFinite,
        //margin: EdgeInsets.only(top: 10, right: 10, left: 10),
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    border: Border.all(color: Colors.blueGrey, width: 3),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'imagens/fotoperfil.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
