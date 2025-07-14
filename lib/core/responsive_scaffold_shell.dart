import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResponsiveScaffoldShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const ResponsiveScaffoldShell({
    super.key,
    required this.navigationShell,
  });

  Widget _buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: navigationShell.currentIndex,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.lightBlue,
      items: const [
        BottomNavigationBarItem(
            label: "Summary",
            icon: Icon(Icons.home_rounded),
            activeIcon: Icon(Icons.home_rounded)),
        BottomNavigationBarItem(
            label: "Resume",
            icon: Icon(Icons.article_outlined),
            activeIcon: Icon(Icons.article_outlined)),
        BottomNavigationBarItem(
            label: "Projects",
            icon: Icon(Icons.code_rounded),
            activeIcon: Icon(Icons.code_rounded)),
        BottomNavigationBarItem(
            label: "Contact",
            icon: Icon(Icons.person_rounded),
            activeIcon: Icon(Icons.person_rounded)),
      ],
      onTap: (value) {
        navigationShell.goBranch(
          value,
          initialLocation: value == navigationShell.currentIndex,
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 50),
        child: Text('GMM | Dev Portfolio'),
      ),
      actions: <Widget>[
        _buildAppBarButton(context,
            index: 0, label: 'Summary', path: '/screening'),
        _buildAppBarButton(context, index: 1, label: 'Resume', path: '/resume'),
        _buildAppBarButton(context,
            index: 2, label: 'Projects', path: '/projects'),
        _buildAppBarButton(context,
            index: 3, label: 'Contact', path: '/contact'),
        const SizedBox(
          width: 50,
        ),
      ],
    );
  }

  Widget _buildAppBarButton(
    BuildContext context, {
    required int index,
    required String label,
    required String path,
  }) {
    final bool isSelected = navigationShell.currentIndex == index;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextButton(
        onPressed: () {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: isSelected
              ? Theme.of(context).primaryColorDark.withOpacity(0.3)
              : null,
          foregroundColor: Colors.black,
        ),
        child: Text(label),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    const double breakpoint = 700;

    final bool useDesktopLayout = width > breakpoint;

    final double horizontalPadding = (width > 1250)
        ? (width * .2)
        : (width > 700)
            ? (width * .07)
            : 0.0;

    return Scaffold(
      appBar: useDesktopLayout ? _buildAppBar(context) : null,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Center(
          child: navigationShell,
        ),
      ),
      bottomNavigationBar:
          useDesktopLayout ? null : _buildBottomNavBar(context),
    );
  }
}
