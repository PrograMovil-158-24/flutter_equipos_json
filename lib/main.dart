import 'package:flutter/material.dart';
import 'package:flutter_equipos_futbol/core/router/app_router.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Equipos de Futbol',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true
      )
    );
  }
}