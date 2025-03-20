import 'package:flutter/material.dart';
import 'qr_generator.dart';
import 'login.dart';
// Nueva pantalla a la que se navegará
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  final cantidadPuntos = '0 Puntos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context), // Pasamos el contexto a la appBar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.payment, size: 38),
                const SizedBox(width: 10),
                Text(
                  cantidadPuntos,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home, size: 33),
              onPressed: () {
                // Acción al presionar el botón
              },
            ),
            IconButton(
              icon: const Icon(Icons.qr_code_scanner, size: 33),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QRCodeScreen()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings, size: 33),
              onPressed: () {
                // Acción al presionar el botón
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: PopupMenuButton(itemBuilder: (BuildContext cxt) => [
            PopupMenuItem(

              child: Row(
                children: [
                  Icon(Icons.help),
                  SizedBox(width: 8),
                  Text('Ayuda y Soporte'),
                ],
              ),
            ),
            PopupMenuItem(

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 8),
                  Text('Cerrar sesión'),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
