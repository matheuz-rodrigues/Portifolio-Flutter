import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void abrirLink(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Não foi possível abrir o link: $url';
  }
}

class Whatsappbtn extends StatelessWidget {
  const Whatsappbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(),
      child: FloatingActionButton(

        onPressed: () {
          abrirLink('https://wa.me/5591999175479?text=Ol%C3%A1%20Matheus,%20venho%20do%20seu%20portif%C3%B3lio.');
        },
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
          height: 45,
          width: 45,
        ),
      ),
    );
  }
  }