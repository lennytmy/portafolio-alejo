import 'package:flutter/material.dart';

class SkillsBanner extends StatefulWidget {
  const SkillsBanner({super.key});

  @override
  State<SkillsBanner> createState() => _SkillsBannerState();
}

class _SkillsBannerState extends State<SkillsBanner> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    bool isMobile = currentWidth < 600 ? true : false;

    return isMobile
        ?
        //en mobile
        Container(
          color: Colors.white,
          width: double.infinity,
          height: 950,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  "Habilidades",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 242, 243),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 62, 112),
                            width: 2,
                          ),
                        ),
                        child: Image.asset("assets/Flutter-icon.png"),
                      ),
                      Text(
                        "Flutter",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 242, 243),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 62, 112),
                            width: 2,
                          ),
                        ),
                        child: Image.asset("assets/Dart-icon.png"),
                      ),

                      Text(
                        "Dart",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 242, 243),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 62, 112),
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Image.asset("assets/github.png", scale: 6),
                        ),
                      ),
                      Text(
                        "Github",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 242, 243),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 62, 112),
                            width: 2,
                          ),
                        ),
                        child: Image.asset("assets/Git-Icon.png", scale: 4),
                      ),

                      Text(
                        "Git",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 242, 243),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 62, 112),
                            width: 2,
                          ),
                        ),
                        child: Image.asset(
                          "assets/Photoshop-icon.png",
                          scale: 10,
                        ),
                      ),
                      Text(
                        "Photoshop",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 242, 243),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 62, 112),
                            width: 2,
                          ),
                        ),
                        child: Image.asset("assets/canva-icon.png", scale: 12),
                      ),
                      Text(
                        "Canva",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 242, 243),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 62, 112),
                            width: 2,
                          ),
                        ),
                        child: Image.asset("assets/Vercel-icon.png"),
                      ),
                      Text(
                        "Vercel",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 242, 243),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 62, 112),
                            width: 2,
                          ),
                        ),
                        child: Image.asset("assets/Excel-icon.png"),
                      ),
                      Text(
                        "Excel",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
        :
        //en escritorio
        Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 200,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 70),
                    child: Text(
                      "Habilidades",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        MouseRegion(
                          onEnter: (_) => setState(() => _isHovered = true),
                          onExit: (_) => setState(() => _isHovered = false),

                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 242, 243),
                              border: Border.all(
                                color:
                                    _isHovered
                                        ? const Color.fromARGB(255, 0, 62, 112)
                                        : Colors.transparent,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(4, 4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                            child: Image.asset("assets/Flutter-icon.png"),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Flutter",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(width: 70),
                Column(
                  children: [
                    Column(
                      children: [
                        MouseRegion(
                          onEnter: (_) => setState(() => _isHovered = true),
                          onExit: (_) => setState(() => _isHovered = false),

                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 242, 243),
                              border: Border.all(
                                color:
                                    _isHovered
                                        ? const Color.fromARGB(255, 0, 62, 112)
                                        : Colors.transparent,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(4, 4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                            child: Image.asset("assets/Dart-icon.png"),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Dart",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(width: 70),
                Column(
                  children: [
                    Column(
                      children: [
                        MouseRegion(
                          onEnter: (_) => setState(() => _isHovered = true),
                          onExit: (_) => setState(() => _isHovered = false),

                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 242, 243),
                              border: Border.all(
                                color:
                                    _isHovered
                                        ? const Color.fromARGB(255, 0, 62, 112)
                                        : Colors.transparent,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(4, 4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                            child: Image.asset("assets/github.png", scale: 5),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Github",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(width: 70),
                Column(
                  children: [
                    Column(
                      children: [
                        MouseRegion(
                          onEnter: (_) => setState(() => _isHovered = true),
                          onExit: (_) => setState(() => _isHovered = false),

                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 242, 243),
                              border: Border.all(
                                color:
                                    _isHovered
                                        ? const Color.fromARGB(255, 0, 62, 112)
                                        : Colors.transparent,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(4, 4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                            child: Image.asset("assets/Git-Icon.png", scale: 4),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Git",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        MouseRegion(
                          onEnter: (_) => setState(() => _isHovered = true),
                          onExit: (_) => setState(() => _isHovered = false),

                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 242, 243),
                              border: Border.all(
                                color:
                                    _isHovered
                                        ? const Color.fromARGB(255, 0, 62, 112)
                                        : Colors.transparent,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(4, 4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                            child: Image.asset("assets/Photoshop-icon.png"),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Photoshop",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 70),
                Column(
                  children: [
                    Column(
                      children: [
                        MouseRegion(
                          onEnter: (_) => setState(() => _isHovered = true),
                          onExit: (_) => setState(() => _isHovered = false),

                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 242, 243),
                              border: Border.all(
                                color:
                                    _isHovered
                                        ? const Color.fromARGB(255, 0, 62, 112)
                                        : Colors.transparent,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(4, 4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "assets/canva-icon.png",
                              scale: 9,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Canva",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 70),
                Column(
                  children: [
                    Column(
                      children: [
                        MouseRegion(
                          onEnter: (_) => setState(() => _isHovered = true),
                          onExit: (_) => setState(() => _isHovered = false),

                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 242, 243),
                              border: Border.all(
                                color:
                                    _isHovered
                                        ? const Color.fromARGB(255, 0, 62, 112)
                                        : Colors.transparent,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(4, 4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                            child: Image.asset("assets/Vercel-icon.png"),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Vercel",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 70),
                Column(
                  children: [
                    Column(
                      children: [
                        MouseRegion(
                          onEnter: (_) => setState(() => _isHovered = true),
                          onExit: (_) => setState(() => _isHovered = false),

                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 242, 243),
                              border: Border.all(
                                color:
                                    _isHovered
                                        ? const Color.fromARGB(255, 0, 62, 112)
                                        : Colors.transparent,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(4, 4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                            child: Image.asset("assets/Excel-icon.png"),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Excel",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 100),
          ],
        );
  }
}
