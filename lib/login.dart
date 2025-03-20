import 'package:flutter/material.dart';
import 'pantalla_principal.dart';
import 'crear_cuneta.dart';
import 'ResetKey.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Login';
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TitleSection(
              name: 'Programa lealtad',
            ),
            TxtCorreo(), // Añadido aquí
          ],
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TxtCorreo extends StatefulWidget {
  const TxtCorreo({super.key});

  @override
  State<TxtCorreo> createState() => _TxtCorreoState();
}

class _TxtCorreoState extends State<TxtCorreo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Ingresa tu correo',
              ),
              validator: (String? correo) {
                if (correo == null || correo.isEmpty) {
                  return 'Inserta tu correo por favor';
                }
                return null;
              },
            ),
          ),
          // Campo de contraseña
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Ingresa tu contraseña',
              ),
              obscureText: true,
              validator: (String? key ) {
                if ( key== null || key.isEmpty) {
                  return 'Inserta una contraseña válida';
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Centra los botones y agrega espacio entre ellos
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RestaurarContrasena()),
                    );
                  },
                  child: const Text(
                    'Crear Cuenta',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ResetKey()),
                    );
                  },
                  child: const Text(
                    'Olvidé mi contraseña',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {
                // Validar antes de navegar
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));

                }
              },
              child: const Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}


