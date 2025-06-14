import 'package:flutter/material.dart';


import 'package:portafolio_a/globals/icons.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    bool isMobile = currentWidth < 600 ? true : false;
    return isMobile
        ? Column(
          children: [
            Image.asset("/foto-ursi.png", scale: 3),
            SizedBox(height: 10),
            Text(
              "Hola! Soy",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),

            Text(
              "Alejo Ursi",
              style: TextStyle(
                fontSize: 30,
                color: const Color.fromARGB(255, 0, 62, 112),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 7),
            Text(
              "Desarrollador Web Flutter",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: 25),
            GestureDetector(
              onTap: () {},

              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),

                  color: const Color.fromARGB(255, 0, 62, 112),
                ),
                child: Center(
                  child: Text(
                    "Descargar CV",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              GestureDetector(
                onTap: () {
                  
                },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(iconLinkedin, scale: 1.5),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(iconGitHub, scale: 1.5),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(iconWsp, scale: 1.5),
                  ),
                ),
              ],
            ),
          ],
        )
        : Container(
          height: 1000,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 140, top: 200),
                    child: Text(
                      "Hola! Soy",
                      style: TextStyle(
                        fontSize:65,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140, top: 2),
                    child: Text(
                      "Alejo Ursi",
                      style: TextStyle(
                        fontSize: 105,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140, top: 30),
                    child: Text(
                      "Desarrollador Web Flutter",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140, top: 40),
                    child: MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          _isHovered = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          _isHovered = false;
                        });
                      },
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:
                                _isHovered
                                    ? const Color.fromARGB(255, 0, 62, 112)
                                    : Colors.white,
                            border: Border.all(
                              color: const Color.fromARGB(255, 0, 62, 112),
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 27),
                                child: Text(
                                  "Descargar CV",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color:
                                        _isHovered
                                            ? Colors.white
                                            : Colors.black,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.file_download,
                                color: _isHovered ? Colors.white : Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 600),
              Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: Image.asset("assets/foto-ursi.png", scale: 1.5),
              ),
            ],
          ),
        );
  }
}
