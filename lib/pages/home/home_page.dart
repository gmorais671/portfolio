import 'package:flutter/material.dart';
import 'package:portfolio/pages/contact/contact_page.dart';
import 'package:portfolio/pages/screening/screening_page.dart';
import 'package:portfolio/pages/projects/projects_page.dart';
import 'package:portfolio/pages/resume/resume_page.dart';
import 'package:flutter/foundation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentPageIndex;
  late int currentPageWebIndex;
  List<Widget> pages = [
    const ScreeningPage(),
    const ResumePage(),
    const ProjectsPage(),
    const ContactPage(),
  ];

  List<Widget> pagesWeb = List.empty();

  Widget _buildAboutPage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: const [
        ContactPage(),
        SizedBox(width: 64),
        Expanded(
          child: ScreeningPage(),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    pagesWeb = [
      _buildAboutPage(),
      const ResumePage(),
      const ProjectsPage(),
    ];
    currentPageIndex = 0;
    currentPageWebIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return !(kIsWeb && width > 700) ? mobileScaffold(width) : webScaffold();
  }

  Widget mobileScaffold(double width) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (width > 1250)
                ? (width * .2)
                : (width > 700)
                    ? (width * .07)
                    : 0.0),
        child: Center(
          child: pages[currentPageIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.lightBlue,
        items: _navigationItems,
        onTap: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
      ),
    );
  }

  Widget webScaffold() {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: pagesWeb[currentPageWebIndex],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0, // Remove a sombra padrão da AppBar
      title: Row(
        children: const [
          Icon(Icons.auto_awesome_mosaic_outlined,
              color: Colors.black), // Ícone de exemplo
          SizedBox(width: 8),
          Text(
            'Gabriel Morais Marcondes',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              currentPageWebIndex = 0;
            });
          },
          child: const Text('About', style: TextStyle(color: Colors.black)),
        ),
        const SizedBox(width: 16),
        TextButton(
          onPressed: () {
            setState(() {
              currentPageWebIndex = 1;
            });
          },
          child: const Text('Resume', style: TextStyle(color: Colors.black)),
        ),
        const SizedBox(width: 16),
        TextButton(
          onPressed: () {
            setState(() {
              currentPageWebIndex = 2;
            });
          },
          child: const Text('Projects', style: TextStyle(color: Colors.black)),
        ),
        const SizedBox(width: 24),
      ],
    );
  }

  final List<BottomNavigationBarItem> _navigationItems = const [
    BottomNavigationBarItem(
      label: "Summary",
      icon: Icon(Icons.home_rounded),
      activeIcon: Icon(Icons.home_rounded),
    ),
    BottomNavigationBarItem(
      label: "Resume",
      icon: Icon(Icons.article_outlined),
      activeIcon: Icon(Icons.article_outlined),
    ),
    BottomNavigationBarItem(
      label: "Projects",
      icon: Icon(Icons.code_rounded),
      activeIcon: Icon(Icons.code_rounded),
    ),
    BottomNavigationBarItem(
      label: "Contact",
      icon: Icon(Icons.person_rounded),
      activeIcon: Icon(Icons.person_rounded),
    ),
  ];
}
