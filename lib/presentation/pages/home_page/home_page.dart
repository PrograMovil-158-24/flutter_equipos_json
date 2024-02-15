import 'package:flutter/material.dart';
import 'package:flutter_equipos_futbol/presentation/pages/home_page/widgets/list_equipos.dart';

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
        title: const Text('Equipos de Futbol'),
      ),
      body: Center(
        child: listEquipos(),
      ),
    );
  }
}
