import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:portafolio_a/banners/about.dart';
import 'package:portafolio_a/banners/contact.dart';
import 'package:portafolio_a/banners/footer.dart';
import 'package:portafolio_a/banners/home.dart';
import 'package:portafolio_a/banners/nav-web.dart';
import 'package:portafolio_a/banners/project.dart';
import 'package:portafolio_a/banners/skills.dart';
import 'package:portafolio_a/globals/github.icon.dart';
import 'package:portafolio_a/globals/linkedin.icon.dart';
import 'package:portafolio_a/globals/wsp.icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();
  bool _showBackToTopButton = false;
  bool _isScrolled = false;
  String _activeSection = 'home';

  // Scroll al widget que recibe y actualiza sección activa
  void scrollToSection(GlobalKey key, String sectionName) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOutCubic,
      );
      setState(() {
        _activeSection = sectionName;
      });
    }
  }

  void onItemSelected(String section) {
    switch (section.toLowerCase()) {
      case 'home':
        scrollToSection(_homeKey, 'home');
        break;
      case 'sobre mi':
        scrollToSection(_aboutKey, 'sobre mi');
        break;
      case 'habilidades':
        scrollToSection(_skillsKey, 'habilidades');
        break;
      case 'proyectos':
        scrollToSection(_projectsKey, 'proyectos');
        break;
      case 'contacto':
        scrollToSection(_contactKey, 'contacto');
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final offset = _scrollController.offset;
      setState(() {
        _showBackToTopButton = offset >= 300;
        _isScrolled = offset > 50;
      });
      _updateActiveSection();
    });
  }

  void _updateActiveSection() {
    RenderBox? box(GlobalKey key) => key.currentContext?.findRenderObject() as RenderBox?;

    double getPosition(GlobalKey key) {
      final boxWidget = box(key);
      return boxWidget?.localToGlobal(Offset.zero).dy ?? double.infinity;
    }

    final positions = {
      'home': getPosition(_homeKey),
      'sobre mi': getPosition(_aboutKey),
      'habilidades': getPosition(_skillsKey),
      'proyectos': getPosition(_projectsKey),
      'contacto': getPosition(_contactKey),
    };

    final visibleSection = positions.entries
        .where((entry) => entry.value >= 0)
        .reduce((a, b) => a.value < b.value ? a : b)
        .key;

    if (_activeSection != visibleSection) {
      setState(() {
        _activeSection = visibleSection;
      });
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeOut,
    );
    setState(() {
      _activeSection = 'home';
    });
  }

  // Drawer para menú lateral mobile
  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 62, 112),
            ),
            child: Text(
              'Menú',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home,color:Color.fromARGB(255, 0, 62, 112)),
            title: const Text('Home',style:TextStyle.new(color: Colors.black)),
            selected: _activeSection == 'home',
            onTap: () {
              Navigator.pop(context);
              onItemSelected('home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.person,color: Color.fromARGB(255, 0, 62, 112)),
            title: const Text('Sobre mí',style: TextStyle.new(color: Colors.black)),
            selected: _activeSection == 'sobre mi',
            onTap: () {
              Navigator.pop(context);
              onItemSelected('sobre mi');
            },
          ),
          ListTile(
            leading: const Icon(Icons.code,color: Color.fromARGB(255, 0, 62, 112)),
            title: const Text('Habilidades',style: TextStyle.new(color: Colors.black)),
            selected: _activeSection == 'habilidades',
            onTap: () {
              Navigator.pop(context);
              onItemSelected('habilidades');
            },
          ),
          ListTile(
            leading: const Icon(Icons.work,color: Color.fromARGB(255, 0, 62, 112)),
            title: const Text('Proyectos',style: TextStyle.new(color: Colors.black)),
            selected: _activeSection == 'proyectos',
            onTap: () {
              Navigator.pop(context);
              onItemSelected('proyectos');
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone,color: Color.fromARGB(255, 0, 62, 112)),
            title: const Text('Contacto',style: TextStyle.new(color: Colors.black)),
            selected: _activeSection == 'contacto',
            onTap: () {
              Navigator.pop(context);
              onItemSelected('contacto');
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      endDrawer: isMobile ? _buildDrawer() : null,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Container(key: _homeKey, child: const HomeBanner()),
                Container(key: _aboutKey, child: const AboutBanner()),
                Container(key: _skillsKey, child: const SkillsBanner()),
                Container(key: _projectsKey, child: const ProjectBanner()),
                Container(key: _contactKey, child: const ContactBanner()),
                const FooterBanner(),
              ],
            ),
          ),

          // Barra de navegación con blur y transparencia al hacer scroll
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: _isScrolled ? 8.0 : 0.0,
                  sigmaY: _isScrolled ? 8.0 : 0.0,
                ),
                child: Opacity(
                  opacity: _isScrolled ? 0.9 : 1.0,
                  child: NavBar(
                    onItemSelected: onItemSelected,
                    activeSection: _activeSection,
                  ),
                ),
              ),
            ),
          ),

          // Botones sociales
          const Positioned(bottom: 130, left: 20, child: LindkeAppButton()),
          const Positioned(bottom: 80, left: 20, child: GitAppButton()),
          const Positioned(bottom: 30, left: 20, child: WhatsAppButton()),

          // Botón "Volver arriba" con animación
          Positioned(
            bottom: 30,
            right: 20,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: _showBackToTopButton ? 1.0 : 0.0,
              curve: Curves.easeInOut,
              child: AnimatedScale(
                scale: _showBackToTopButton ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
                child: Visibility(
                  visible: _showBackToTopButton,
                  child: FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 0, 62, 112),
                    elevation: 6,
                    onPressed: _scrollToTop,
                    child: const Icon(Icons.arrow_upward, size: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
