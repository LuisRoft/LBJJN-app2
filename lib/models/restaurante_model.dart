// To parse this JSON data, do
//
//     final restauranteModels = restauranteModelsFromJson(jsonString);

import 'dart:convert';

import 'package:hdt_flutter/models/menu_model.dart';

RestauranteModels restauranteModelsFromJson(String str) => RestauranteModels.fromJson(json.decode(str));

String restauranteModelsToJson(RestauranteModels data) => json.encode(data.toJson());

class RestauranteModels {
  String id;
  String nombre;
  String descripcion;
  bool estado;
  String imagen;
  List<String> mesas;
  List<MenuModels> menu;

  RestauranteModels({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.estado,
    required this.imagen,
    required this.mesas,
    required this.menu,
  });

  factory RestauranteModels.fromJson(Map<String, dynamic> json) => RestauranteModels(
        id: json["id"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        estado: json["estado"],
        imagen: json["imagen"],
        mesas: List<String>.from(json["mesas"].map((x) => x)),
        menu: List<MenuModels>.from(json["menu"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "descripcion": descripcion,
        "estado": estado,
        "imagen": imagen,
        "mesas": List<dynamic>.from(mesas.map((x) => x)),
        "menu": List<MenuModels>.from(menu.map((x) => x)),
      };
}
