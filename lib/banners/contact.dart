import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactBanner extends StatefulWidget {
  const ContactBanner({super.key});

  @override
  State<ContactBanner> createState() => _ContactBannerState();
}

class _ContactBannerState extends State<ContactBanner> {
  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    bool isMobile = currentWidth < 600 ? true : false;
    //mobile
    return isMobile
        ? Container(
          color: Colors.white,
          width: double.infinity,
          height: 600,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Contacto",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 242, 243),
                      borderRadius: BorderRadius.circular(130),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.email, color: Colors.black, size: 60),
                  ),
                  Text("Email", style: TextStyle(fontSize: 20)),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap:
                        () => launchUrlString(
                          "mailto:alejoursi99@gmail.com",
                          mode: LaunchMode.externalApplication,
                        ),
                    child: Text(
                      "alejoursi99@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 62, 112),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 242, 243),
                      borderRadius: BorderRadius.circular(130),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.phone, color: Colors.black, size: 60),
                  ),
                  Text("Telefono", style: TextStyle(fontSize: 20)),
                  SizedBox(width: 10),
                  Text(
                    "+54-1149724373",
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 0, 62, 112),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 242, 243),
                      borderRadius: BorderRadius.circular(130),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.place, color: Colors.black, size: 60),
                  ),
                  Text("Ubicacion", style: TextStyle(fontSize: 20)),
                  SizedBox(width: 10),
                  Text(
                    "Buenos Aires, Argentina",
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 0, 62, 112),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
        :
        //modo escritorio
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.maxFinite,
              height: 230,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      "Contacto",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 140),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap:
                            () => launchUrlString(
                              "mailto:alejoursi99@gmail.com",
                              mode: LaunchMode.externalApplication,
                            ),
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 240, 242, 243),
                            borderRadius: BorderRadius.circular(130),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.email,
                            color: Colors.black,
                            size: 100,
                          ),
                        ),
                      ),
                      Text("Email", style: TextStyle(fontSize: 30)),
                      SizedBox(height: 10),

                      Text(
                        "alejoursi99@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 62, 112),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 242, 243),
                          borderRadius: BorderRadius.circular(130),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 100,
                        ),
                      ),
                      Text("Telefono", style: TextStyle(fontSize: 30)),
                      SizedBox(height: 10),
                      Text(
                        "+54-1149724373",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 62, 112),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 242, 243),
                          borderRadius: BorderRadius.circular(130),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.place,
                          color: Colors.black,
                          size: 100,
                        ),
                      ),
                      Text("Ubicacion", style: TextStyle(fontSize: 30)),
                      SizedBox(height: 10),
                      Text(
                        "Buenos Aires, Argentina",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 62, 112),
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
