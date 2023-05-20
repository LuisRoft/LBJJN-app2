import 'package:flutter/material.dart';
import 'package:hdt_flutter/helpers/shared_preference_helper.dart';

class IdiomaProviders extends ChangeNotifier {
  late String idioma;
  IdiomaProviders() {
    getidioma();
  }
  setIdioma(String id) {
    idioma = id;
    SharedPreferenceHelper.setString("idioma", id);
    notifyListeners();
  }

  getidioma() {
    idioma = SharedPreferenceHelper.getString("idioma") == 'N/A' ? 'es' : SharedPreferenceHelper.getString("idioma");
    notifyListeners();
  }
}
