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
      height: 70,
      width: 70,
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
          height: 60,
          width: 60,
        ),
      ),
    );
  }
}