import 'package:flutter/material.dart';

import 'package:portafolio_a/globals/string-info.dart';

import 'package:url_launcher/url_launcher_string.dart';

class GitAppButton extends StatefulWidget {
  const GitAppButton({super.key});

  @override
  State<GitAppButton> createState() => _GitAppButtonState();
}

class _GitAppButtonState extends State<GitAppButton> {
  void _launchGitApp() async {
    if (await canLaunchUrlString(githubUrlApp)) {
      await launchUrlString(githubUrlApp);
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
        onTap: _launchGitApp,
        child: Container(
          width: 45, // Asegura un tamaño adecuado
          height: 40, // Asegura un tamaño adecuado
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(githubIconApp),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle, // Le da una forma circular al botón
          ),
        ),
      ),
    );
  }
}
