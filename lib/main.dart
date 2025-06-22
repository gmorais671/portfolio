import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/router.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/pages/contact/contact_page.dart';
import 'package:portfolio/pages/screening/screening_page.dart';
import 'package:portfolio/pages/projects/projects_page.dart';
import 'package:portfolio/pages/resume/resume_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.lightBlue,
        ),
        textTheme: GoogleFonts.makoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routerConfig: router,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentPageIndex;
  List<Widget> pages = [
    const ScreeningPage(),
    const ResumePage(),
    const ProjectsPage(),
    const ContactPage(),
  ];

  @override
  void initState() {
    super.initState();
    currentPageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[currentPageIndex],
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

  final List<BottomNavigationBarItem> _navigationItems = const [
    BottomNavigationBarItem(
      label: "Home",
      icon: Icon(Icons.home_rounded),
      activeIcon: Icon(Icons.home_rounded),
    ),
    BottomNavigationBarItem(
      label: "Resume",
      icon: Icon(Icons.person_rounded),
      activeIcon: Icon(Icons.person_rounded),
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
