import 'package:flutter/material.dart';
import 'login.dart';
class ResetKey extends StatelessWidget {
  const ResetKey({super.key});


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

            RestaurarCuenta(), // Añadido aquí
          ],
        ),
      ),
    );
  }
}


class RestaurarCuenta extends StatefulWidget {
  const RestaurarCuenta({super.key});

  @override
  State<RestaurarCuenta> createState() => _RestaurarCuentaState();
}

class _RestaurarCuentaState extends State<RestaurarCuenta> {
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
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {
                // Validar antes de navegar
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));

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


