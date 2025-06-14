import 'package:flutter/material.dart';

import 'package:portafolio_a/globals/string-info.dart';

import 'package:url_launcher/url_launcher_string.dart';

class LindkeAppButton extends StatefulWidget {
  const LindkeAppButton({super.key});

  @override
  State<LindkeAppButton> createState() => _LindkeAppButtonState();
}

class _LindkeAppButtonState extends State<LindkeAppButton> {
  void _launchLinkedinApp() async {
    if (await canLaunchUrlString(linkUrlApp)) {
      await launchUrlString(linkUrlApp);
    } else {
      // Maneja el caso en que no se puede lanzar la URL
      print("No se pudo abrir Lindkedin");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _launchLinkedinApp,
        child: Container(
          width: 45, // Asegura un tamaño adecuado
          height: 40, // Asegura un tamaño adecuado
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(linkIconApp),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle, // Le da una forma circular al botón
          ),
        ),
      ),
    );
  }
}
