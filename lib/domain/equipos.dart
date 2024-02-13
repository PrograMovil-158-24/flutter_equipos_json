import 'dart:convert';
List<Equipos> equiposFromJson(String str) => List<Equipos>.from(json.decode(str).map((x) => Equipos.fromJson(x)));

class Equipos {
    int id;
    String name;
    Country country;
    String logo;
    String primaryColor;
    String stadium;

    Equipos({
        required this.id,
        required this.name,
        required this.country,
        required this.logo,
        required this.primaryColor,
        required this.stadium,
    });

        factory Equipos.fromJson(Map<String, dynamic> json) => Equipos(
        id: json["id"],
        name: json["name"],
        country: countryValues.map[json["country"]]!,
        logo: json["logo"],
        primaryColor: json["primary_color"],
        stadium: json["stadium"],
    );

}

enum Country {
    england
}

final countryValues = EnumValues({
    "England": Country.england
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}