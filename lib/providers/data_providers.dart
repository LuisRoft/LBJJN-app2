import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hdt_flutter/helpers/shared_preference_helper.dart';
import 'package:hdt_flutter/models/restaurante_model.dart';

class DataProviders extends ChangeNotifier {
  DatabaseReference database = FirebaseDatabase.instance.ref();
  late StreamSubscription<DatabaseEvent> enveAdd;
  late StreamSubscription<DatabaseEvent> enveRemove;
  final List<RestauranteModels> resta = [];
  bool loandig = true;
  DataProviders() {
    initData();
  }
  initData() {
    String idioma = SharedPreferenceHelper.getString("idioma");
    debugPrint(idioma);
    enveAdd = database.child("Datos/restaurantes/$idioma").onChildAdded.listen((event) {
      final todoresta = RestauranteModels.fromSnapshot(event.snapshot);
      resta.add(todoresta);
      loandig = false;
      notifyListeners();
    }, onError: (Object error) {
      debugPrint("$error");
    });
    enveRemove = database.child("Datos/restaurantes/$idioma").onChildRemoved.listen((event) {
      resta.removeWhere((element) => element.id == RestauranteModels.fromSnapshot(event.snapshot).id);
      notifyListeners();
    }, onError: (Object error) {
      debugPrint("$error");
    });
  }
}
