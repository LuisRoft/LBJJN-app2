// To parse this JSON data, do
//
//     final menuModels = menuModelsFromJson(jsonString);

import 'dart:convert';

MenuModels menuModelsFromJson(String str) => MenuModels.fromJson(json.decode(str));

String menuModelsToJson(MenuModels data) => json.encode(data.toJson());

class MenuModels {
  String id;
  String nombre;
  String descripcion;
  bool estado;
  String imagen;

  MenuModels({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.estado,
    required this.imagen,
  });

  factory MenuModels.fromJson(Map<String, dynamic> json) => MenuModels(
        id: json["id"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        estado: json["estado"],
        imagen: json["imagen"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "descripcion": descripcion,
        "estado": estado,
        "imagen": imagen,
      };
}
