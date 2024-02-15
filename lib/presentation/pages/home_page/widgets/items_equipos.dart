import 'package:flutter/material.dart';

List<Widget> listItems(List<dynamic>? data, BuildContext context) {
  List<Widget> listItems = [];

  data?.forEach((element) { 
      final country=element.country.toString().split('.').last.toUpperCase();
    listItems.add(
      ListTile(
        leading: Image.network(element.logo),
        title: Text(element.name),
        subtitle: Text(country),
        onTap: () {
          print('Tapped');
          //Navegacion a una pantalle del equipo .....  equipo/:id
        },
      )
    );
  });
  return listItems;
}