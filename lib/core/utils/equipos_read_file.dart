import 'dart:convert' as convert;

import 'package:flutter/services.dart';
import 'package:flutter_equipos_futbol/domain/equipos.dart';

//Estructura de la clase
class _EquiposReadFile{
  //CRUD

  //READ
  Future<List<Equipos>> getEquipos() async {
    final _dataAssetBundle = await rootBundle.loadString('database/equipos_data.json');
    List<dynamic> _equiposListJson = convert.jsonDecode(_dataAssetBundle);
    return _equiposListJson.map((e) => Equipos.fromJson(e)).toList();
  }

  //CREATE

  //UPDATE

  //DELETE

}

//Instancia de la clase
final equiposReadFile = _EquiposReadFile();