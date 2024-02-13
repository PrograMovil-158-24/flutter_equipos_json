import 'dart:convert' as convert;

import 'package:flutter/services.dart';
import 'package:flutter_equipos_futbol/domain/equipos.dart';

class _EquiposReadFile{
  static Future<List<Equipos>> getEquipos() async {
    final _dataFile = await rootBundle.loadString('database/equipos_data.json');
    List<dynamic> _equiposJson = convert.jsonDecode(_dataFile);
    return _equiposJson.map((e) => Equipos.fromJson(e)).toList();
  }
}