import 'package:flutter/material.dart';
import 'login.dart';
class RestaurarContrasena extends StatelessWidget {
  const RestaurarContrasena({super.key});


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
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Ingresa tus nombres',
              ),
              obscureText: false,
              validator: (String? Nombre ) {
                if ( Nombre== null || Nombre.isEmpty) {
                  return 'El campo no debe de estar vacio';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Ingresa tus Apellidos',
              ),
              obscureText: false,
              validator: (String? Apellido ) {
                if ( Apellido== null || Apellido.isEmpty) {
                  return 'El campo no debe de estar vacio';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Ingresa tu Calle',
              ),
              obscureText: false,
              validator: (String? Calle ) {
                if ( Calle== null || Calle.isEmpty) {
                  return 'El campo no debe de estar vacio';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Ingresa tu numero',
              ),
              obscureText: false,
              validator: (String? Numero ) {
                if ( Numero== null || Numero.isEmpty) {
                  return 'El campo no debe de estar vacio';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Ingresa tu Codigo Postal',
              ),
              obscureText: false,
              validator: (String? Cp ) {
                if ( Cp== null || Cp.isEmpty) {
                  return 'El campo no debe de estar vacio';
                }
                return null;
              },
            ),
          ),
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


/*class Restaurar extends StatefulWidget {
  const Restaurar({super.key});

  @override
  State<Restaurar> createState() => _RestaurarState();
}

class _RestaurarState extends State<Restaurar> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

// Definición de los campos
  final List<Map<String, dynamic>> campos = [
    {
      "label": "Correo",
      "hint": "Ingresa tu correo",
      "validator": "Inserta tu correo por favor",
      "obscureText": false,
    },
    {
      "label": "Contraseña",
      "hint": "Ingresa tu Contraseña",
      "validator": "Inserta tu Contraseña por favor",
      "obscureText": true,
    },
    {
      "label": "Nombres",
      "hint": "Ingresa tu nombre",
      "validator": "Inserta tu nombre por favor",
      "obscureText": false,
    },
    {
      "label": "Apellidos",
      "hint": "Ingresa tu apellido",
      "validator": "Inserta tu apellido por favor",
      "obscureText": false,
    },
    {
      "label": "Direccion",
      "hint": "Ingresa tu apellido",
      "validator": "Inserta tu direccion por favor",
      "obscureText": false,
    },
    {
      "label": "fecha de nacimiento",
      "hint": "Ingresa tu apellido",
      "validator": "Inserta tu fecha de nacimiento por favor",
      "obscureText": false,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: campos.map((campo) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: campo["label"],
                hintText: campo["hint"],
                border: const OutlineInputBorder(),
              ),
              obscureText: campo["obscureText"],
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return campo["validator"];
                }
                return null;
              },
            ),
          );
        }).toList(),
      ),

    );

  }


}*/
