import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



Future<void> abrirLink(String url) async {
  final Uri uri = Uri.parse(url);
  await launchUrl(uri);
}
class Whatsappbtn extends StatelessWidget {
  const Whatsappbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      height: 66,
      width: 66,
      child: FloatingActionButton(
        onPressed: () => abrirLink('whatsapp://send?phone=5591999175479&text=Olá Matheus, eu vim pelo seu portifólio.'),
      backgroundColor: Colors.blueGrey[900],
        elevation: 8.0,
        highlightElevation: 12.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tooltip: "Fale Comigo",
        materialTapTargetSize: MaterialTapTargetSize.padded,
        child: Image.asset(
          'imagens/logowhatsapp.png',
          height: 56,
          width: 56,
        ),
      ),
    );
  }
}



class Projetos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projetos'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Quantidade de colunas
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: projetos.length, // Quantidade de projetos
          itemBuilder: (context, index) {
            final projeto = projetos[index];
            return MouseRegion(
              onEnter: (_) => projeto['hover'] = true,
              onExit: (_) => projeto['hover'] = false,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => projeto['pagina'],
                    ),
                  );
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    color: projeto['hover'] ? Colors.blueGrey[300] : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: projeto['hover']
                        ? [
                      BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ]
                        : [],
                  ),
                  child: Center(
                    child: Text(
                      projeto['titulo'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Dados dos projetos (substitua pelos seus projetos reais)
final List<Map<String, dynamic>> projetos = [
  {
    'titulo': 'Projeto 1',
    'hover': false, // Para controle do estado de hover
    'pagina': Placeholder(), // Substitua pelo widget da página do projeto
  },
  {
    'titulo': 'Projeto 2',
    'hover': false,
    'pagina': Placeholder(),
  },
  // Adicione mais projetos aqui
];
