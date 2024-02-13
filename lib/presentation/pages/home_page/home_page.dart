import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  // final Widget child;
  // final int currentIndex;

  const HomePage({
    Key? key,
    //  required this.child,
    //  required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Equipo A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('Equipo B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Equipo C')),
            ),
          ],
        )
        /*  bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_music_rounded),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse),
            label: 'Recently Played',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int idx) => _onItemTapped(idx, context),
      ),*/
        );
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 1:
        GoRouter.of(context).go('/recents');
        break;
      case 2:
        GoRouter.of(context).go('/search');
        break;
      case 0:
      default:
        GoRouter.of(context).go('/library');
        break;
    }
  }
}
