import 'package:flutter/material.dart';
import 'package:flutter_equipos_futbol/core/utils/equipos_read_file.dart';
import 'package:flutter_equipos_futbol/presentation/pages/home_page/widgets/items_equipos.dart';

Widget listEquipos() {
  return FutureBuilder(
    future: equiposReadFile.getEquipos(), 
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      if (snapshot.hasData) {
        return ListView(
          children: listItems(snapshot.data, context),
        );
      } else {
        return const CircularProgressIndicator();
      }
    }
  );
}