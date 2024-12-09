import 'package:flutter/material.dart';
import 'package:portifolio/ConversorDeMoeda.dart';
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
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Verifica a largura disponível
            bool isSmallScreen = constraints.maxWidth < 600;

            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Seção de introdução
                  if (isSmallScreen) ...[
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('imagens/fotoperfil.png'),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Matheus Rodrigues',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Sou Matheus Rodrigues, um aspirante a Engenheiro de Software dedicado a criar soluções inovadoras. Com experiência em Flutter, Python e banco de dados, busco transformar ideias em projetos eficientes, focados na qualidade e no impacto positivo.',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      textAlign: TextAlign.center,
                    ),
                  ] else ...[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('imagens/fotoperfil.png'),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Matheus Rodrigues',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Sou Matheus Rodrigues, um aspirante a Engenheiro de Software dedicado a criar soluções inovadoras. Com experiência em Flutter, Python e banco de dados, busco transformar ideias em projetos eficientes, focados na qualidade e no impacto positivo.',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  const SizedBox(height: 40),
                  // Seção de projetos
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Projetos',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                        const SizedBox(height: 20),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Quantidade de colunas
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                          itemCount: projetos.length,
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
                                    color: projeto['hover']
                                        ? Colors.blueGrey[300]
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: projeto['hover']
                                        ? [
                                      BoxShadow(
                                        color: Colors.blueGrey
                                            .withOpacity(0.5),
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
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// Lista de projetos (adicione seus próprios dados)
final List<Map<String, dynamic>> projetos = [
  {
    'titulo': 'Conversor de Moedas',
    'hover': false,
    'pagina': ConversorDeMoedas(),
  },
  {
    'titulo': 'Projeto 2',
    'hover': false,
    'pagina': Placeholder(),
  },
];
