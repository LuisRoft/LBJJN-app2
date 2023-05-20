import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hdt_flutter/models/restaurante_model.dart';
import 'package:hdt_flutter/utils/const.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hdt_flutter/widgets/card_platos.dart';

class PlatosRecomendadosView extends StatelessWidget {
  const PlatosRecomendadosView({super.key, required this.data});
  final RestauranteModels data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: principal),
        leadingWidth: 230,
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.pop();
              },
            ),
            Text(
              AppLocalizations.of(context)!.platosrecomendados,
              style: TextStyle(
                color: principal,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) {
          return CardPlatos(
            menu: data.menu[index],
            onTap: () {},
          );
        },
      ),
    );
  }
}
