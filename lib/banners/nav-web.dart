import 'package:flutter/material.dart';
import 'package:portafolio_a/navs/nav_items.dart';

class NavBar extends StatefulWidget {
  final Function(String) onItemSelected;
  final String activeSection;

  const NavBar({
    super.key,
    required this.onItemSelected,
    required this.activeSection,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  void _handleItemSelected(String section) {
    widget.onItemSelected(section);
  }

  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    bool isMobile = currentWidth < 600;

    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: const Offset(0, 4),
            blurRadius: 12,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const Text(
              "AU",
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 0, 62, 112),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            if (isMobile)
              Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.black87,
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              )
            else
              for (int i = 0; i < navTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: () {
                      _handleItemSelected(navTitles[i].toLowerCase());
                    },
                    child: Text(
                      navTitles[i],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: widget.activeSection == navTitles[i].toLowerCase()
                            ? const Color.fromARGB(255, 0, 62, 112)
                            : Colors.grey[700],
                        decoration: widget.activeSection == navTitles[i].toLowerCase()
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
