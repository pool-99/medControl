import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(children: [
          Onboarding1(),
        ]),
      ),
    );
  }
}

class Onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 640,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 16,
                top: 93,
                child: SizedBox(
                  width: 331,
                  height: 83,
                  child: Text(
                    'MedControl apoya a tu salud',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Poor Story',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 20,
                child: SizedBox(
                  width: 280,
                  height: 60,
                  child: Text(
                    'Tu salud, nuestra misión. Inicia tu día con nosotros.\n\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF2E3768),
                      fontSize: 20,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 233,
                child: SizedBox(
                  width: 300,
                  height: 335,
                  child: Text(
                    'Nos servirá para poder llevar un control y ayudar a las personas (descripción)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Poor Story',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                bottom: 20,
                child: ElevatedButton(
                  onPressed: () {
                    // Lógica para manejar el evento del botón
                  },
                  child: Text('Comencemos'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
