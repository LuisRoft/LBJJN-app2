import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hdt_flutter/models/restaurante_model.dart';
import 'package:hdt_flutter/utils/const.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MesasView extends StatelessWidget {
  const MesasView({super.key, required this.data});
  final RestauranteModels data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: principal),
        leadingWidth: 200,
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.pop();
              },
            ),
            Text(
              AppLocalizations.of(context)!.mesasdisponibles,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(AppLocalizations.of(context)!.mesa),
              Text(AppLocalizations.of(context)!.cantpersonas),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.mesas.length,
              padding: const EdgeInsets.all(24),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: data.mesas[index].estado ? Colors.red[200] : Colors.green[200],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("#${index + 1}"),
                        Text(AppLocalizations.of(context)!.pers(data.mesas[index].canti)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
