import 'package:flutter/material.dart';
import 'package:met_control/screens/register.dart';

class Terminos extends StatefulWidget {
  @override
  _TerminosPageState createState() => _TerminosPageState();
}

class _TerminosPageState extends State<Terminos> {
  bool aceptarTermino1 = false;
  bool aceptarTermino2 = false;

  bool get canAceptar => aceptarTermino1 && aceptarTermino2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Términos y Condiciones'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Términos y Condiciones',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          TerminosCheckbox(
            texto:
                '1. Al utilizar esta aplicación, usted acepta los siguientes términos y condiciones...',
            value: aceptarTermino1,
            onChanged: (value) {
              setState(() {
                aceptarTermino1 = value!;
              });
            },
          ),
          SizedBox(height: 8.0),
          TerminosCheckbox(
            texto:
                '2. Usted es responsable de mantener la confidencialidad de su cuenta y contraseña...',
            value: aceptarTermino2,
            onChanged: (value) {
              setState(() {
                aceptarTermino2 = value!;
              });
            },
          ),
          // Añadir más términos y condiciones según sea necesario
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: canAceptar
                ? () {
                    // Navegar a otra página o realizar acciones después de aceptar los términos
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuthScreen(),
                      ),
                    );
                  }
                : null,
            child: Text('Aceptar'),
          ),
        ],
      ),
    );
  }
}

class TerminosCheckbox extends StatelessWidget {
  final String texto;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const TerminosCheckbox({
    required this.texto,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Flexible(
          child: Text(
            texto,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}

class OtraPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Otra Página'),
      ),
      body: Center(
        child: Text('Contenido de la otra página'),
      ),
    );
  }
}
