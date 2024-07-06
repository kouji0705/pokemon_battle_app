import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'page/battle.dart';
import 'page/home.dart';
import 'page/info.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) {
        return ScaffoldWithNavBar(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return HomePage();
          },
        ),
        GoRoute(
          path: '/search',
          builder: (BuildContext context, GoRouterState state) {
            return BattlePage();
          },
        ),
        GoRoute(
          path: '/info',
          builder: (BuildContext context, GoRouterState state) {
            return InfoPage();
          },
        ),
      ],
    ),
  ],
);

class ScaffoldWithNavBar extends StatefulWidget {
  final Widget child;

  ScaffoldWithNavBar({required this.child});

  @override
  _ScaffoldWithNavBarState createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          context.go('/');
          break;
        case 1:
          context.go('/search?query=example');
          break;
        case 2:
          context.go('/info');
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Info',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
