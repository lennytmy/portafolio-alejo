import 'package:flutter/material.dart';

class AboutBanner extends StatefulWidget {
  const AboutBanner({super.key});

  @override
  State<AboutBanner> createState() => _AboutBannerState();
}

class _AboutBannerState extends State<AboutBanner> {
  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    bool isMobile = currentWidth < 600 ? true : false;

    return isMobile
        ?
        //en mobile
        Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 240, 242, 243),
              width: double.infinity,
              height: 550,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 15),
                    child: Text(
                      "Sobre mi",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 10,
                          right: 10,
                        ),
                        child: Text(
                          "Alejo ursi",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 62, 112),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Column(
                      children: [
                        Text(
                          "Hola, soy un estudiante de Desarrollo Web, con enfoque en el uso de Flutter.",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        Text(
                          "Mi objetivo es seguir creciendo como desarrollador y estudiar el año que viene la tecnicatura universitaria en programacion en UNAHUR,",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        Text(
                          "mientras seguir creando proyectos para ganar experiencia y tener oportudidades laborales a futuro.",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Soy una persona curiosa y enfocada en la mejora continua, me gusta entender como funcionan las cosas,",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        Text(
                          "y no me detengo hasta encontrar soluciones.",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        Text(
                          "Me gusta trabajar en proyectos que me desafien y me hagan salir de mi zona de confort.",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
        :
        //en escritorio
        Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 700,
              color: const Color.fromARGB(255, 240, 242, 243),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Text(
                      "Sobre mi",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Alejo Ursi",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 0, 62, 112),
                          ),
                        ),
                      ),
                      SizedBox(height: 110),
                    ],
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          "Hola, soy un estudiante de Desarrollo Web, con enfoque en el uso de Flutter.",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          "Mi objetivo es seguir creciendo como desarrollador y estudiar el año que viene la tecnicatura universitaria en programacion en UNAHUR,",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          "mientras seguir creando proyectos para ganar experiencia y tener oportudidades laborales a futuro.",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          "Soy una persona curiosa y enfocada en la mejora continua, me gusta entender como funcionan las cosas,",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          "y no me detengo hasta encontrar soluciones.",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          "Me gusta trabajar en proyectos que me desafien y me hagan salir de mi zona de confort.",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
  }
}
