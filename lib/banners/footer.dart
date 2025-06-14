import 'package:flutter/material.dart';

class FooterBanner extends StatefulWidget {
  const FooterBanner({super.key});

  @override
  State<FooterBanner> createState() => _FooterBannerState();
}

class _FooterBannerState extends State<FooterBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: double.infinity,
      color: Colors.black,
      child: Center(
        child: Text(
          "Copyright © | Coded with by Alejo ursi",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
