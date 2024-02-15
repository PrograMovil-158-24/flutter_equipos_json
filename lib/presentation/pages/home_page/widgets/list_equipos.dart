import 'package:flutter/material.dart';
import 'package:flutter_equipos_futbol/core/utils/equipos_read_file.dart';

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

List<Widget> listItems(List<dynamic>? data, BuildContext context) {
  List<Widget> _listItems = [];

  data?.forEach((element) { 
      final country=element.country.toString().split('.').last.toUpperCase();
    _listItems.add(
      ListTile(
        leading: Image.network(element.logo),
        title: Text(element.name),
        subtitle: Text(country),
        onTap: () {
          print('Tapped');
        },
      )
    );
  });
  return _listItems;
}