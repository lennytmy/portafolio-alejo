import 'package:flutter/material.dart';

class ProjectBanner extends StatefulWidget {
  const ProjectBanner({super.key});

  @override
  State<ProjectBanner> createState() => _ProjectBannerState();
}

class _ProjectBannerState extends State<ProjectBanner> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    bool isMobile = currentWidth < 600 ? true : false;
    // mobile
    return isMobile
        ? Container(
          color: const Color.fromARGB(255, 240, 242, 243),
          width: double.infinity,
          height: 1000,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  "Proyectos",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 70),
              Column(
                children: [
                  Container(
                    width: 320,
                    height: 350,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 62, 112),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(4, 4),
                          spreadRadius: 5,
                          blurRadius: 7,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/alejo-home-nuevo.JPG"),
                        SizedBox(height: 10),
                        Text(
                          "Portafolio",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Mi portafolio personal, donde podes encontrar mis habilidades, proyectos e informacion sobre mi.",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.visibility),
                                  SizedBox(width: 7),
                                  Text(
                                    "Visitar",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70),
                  Container(
                    width: 320,
                    height: 350,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 62, 112),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(4, 4),
                          spreadRadius: 5,
                          blurRadius: 7,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/webgym.JPG"),
                        SizedBox(height: 30),
                        Text(
                          "Coming soon",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
        //escritorio
        : Column(
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
                      "Proyectos",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 160),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 62, 112),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(4, 4),
                              spreadRadius: 5,
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/alejo-home-nuevo.JPG",
                              scale: 3,
                            ),
                            SizedBox(height: 10),

                            Text(
                              "Portafolio",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 9, right: 5),
                              child: Text(
                                "Mi portafolio personal, donde podes encontrar mis habilidades, proyectos e informacion sobre mi.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            MouseRegion(
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
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color:
                                        _isHovered
                                            ? const Color.fromARGB(
                                              255,
                                              240,
                                              242,
                                              243,
                                            )
                                            : Colors.white,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 25,
                                        ),
                                        child: Icon(
                                          Icons.visibility,
                                          size: 30,
                                          color: Color.fromARGB(
                                            255,
                                            0,
                                            62,
                                            112,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "Visitar",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                            255,
                                            0,
                                            62,
                                            112,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 150),
                      Column(
                        children: [
                          Container(
                            height: 400,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 62, 112),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(4, 4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/webgym.JPG"),
                                SizedBox(height: 30),
                                Text(
                                  "Coming soon",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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



