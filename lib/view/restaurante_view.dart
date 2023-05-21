import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hdt_flutter/providers/data_providers.dart';
import 'package:hdt_flutter/utils/const.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hdt_flutter/widgets/card_restaurantes.dart';
import 'package:provider/provider.dart';

class RestaurantesView extends StatelessWidget {
  const RestaurantesView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DataProviders>(context);
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
              AppLocalizations.of(context)!.restaurante,
              style: TextStyle(
                color: principal,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       FirebaseDatabase.instance.ref().child("Datos/restaurantes/es").remove();
        //       FirebaseDatabase.instance.ref().child("Datos/restaurantes/en").remove();
        //       SharedPreferenceHelper.clearPref();
        //     },
        //     icon: const Icon(Icons.deblur),
        //   ),
        //   ElevatedButton(
        //     onPressed: () {
        //       int ranMesa = Random().nextInt(10);
        //       int ranCant = Random().nextInt(100);
        //       int ranMenu = Random().nextInt(10);
        //       for (var i = 0; i < ranCant; i++) {
        //         final RestauranteModels s = RestauranteModels(
        //           id: "id$i",
        //           nombre: "Restaurante $i",
        //           descripcion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur felis ante, placerat id blandit vitae, dapibus id mi. Nam lacus magna, aliquam ut mattis ut, porttitor sed quam. Vivamus erat.",
        //           estado: true,
        //           imagen: 'https://via.placeholder.com/640x480.png/a59090/000000?Text=640x480',
        //           mesas: List.generate(
        //             ranMesa,
        //             (index) {
        //               int ranCant = Random().nextInt(10);
        //               bool sss = Random().nextBool();

        //               return MesasModels(
        //                 id: "id$index",
        //                 nombre: "Mesa $index",
        //                 descripcion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur felis ante, placerat id blandit vitae, dapibus id mi. Nam lacus magna, aliquam ut mattis ut, porttitor sed quam. Vivamus erat.",
        //                 estado: sss,
        //                 imagen: 'https://via.placeholder.com/640x480.png/a59090/000000?Text=640x480',
        //                 canti: ranCant,
        //               );
        //             },
        //           ),
        //           menu: List.generate(
        //             ranMenu,
        //             (indexm) => MenuModels(
        //               id: "id$indexm",
        //               nombre: "Menu $indexm",
        //               descripcion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur felis ante, placerat id blandit vitae, dapibus id mi. Nam lacus magna, aliquam ut mattis ut, porttitor sed quam. Vivamus erat.",
        //               estado: true,
        //               imagen: 'https://via.placeholder.com/640x480.png/a59090/000000?Text=640x480',
        //               recomendado: true,
        //               categoria: "categoria",
        //               ingredientes: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur felis ante, placerat id blandit vitae, dapibus id mi. Nam lacus magna, aliquam ut mattis ut, porttitor sed quam. Vivamus erat.",
        //               precio: "precio",
        //             ),
        //           ),
        //         );
        //         FirebaseDatabase.instance.ref().child("Datos/restaurantes/es").push().set(s.toJson()).whenComplete(() {
        //           debugPrint("bien es");
        //           s.nombre = "${s.nombre} en";
        //           FirebaseDatabase.instance.ref().child("Datos/restaurantes/en").push().set(s.toJson()).whenComplete(() {
        //             debugPrint("bien en");
        //           }).onError((error, stackTrace) {
        //             debugPrint("Error: $error");
        //           });
        //         }).onError((error, stackTrace) {
        //           debugPrint("Error: $error");
        //         });
        //       }
        //     },
        //     child: const Text("Guardar"),
        //   ),
        // ],

        elevation: 0,
      ),
      body: data.loandig
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  data.resta.isEmpty
                      ? const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.refresh_outlined),
                            ],
                          ),
                        )
                      : CardRestaurantes(
                          restaurante: data.resta[0],
                          height: 175,
                          onTap: () {
                            context.push("/detalleRestaurante", extra: data.resta[0]);
                          },
                        ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: data.resta.isEmpty ? 0 : (data.resta.length ~/ 2) * 185,
                    child: GridView.builder(
                      itemCount: data.resta.isEmpty ? 0 : data.resta.length - 1,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Número de columnas en la cuadrícula
                        mainAxisSpacing: 5.0, // Espacio vertical entre los elementos
                        crossAxisSpacing: 5.0, // Espacio horizontal entre los elementos
                        childAspectRatio: 1.1,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        int i = index + 1;
                        return CardRestaurantes(
                          restaurante: data.resta[i],
                          onTap: () {
                            context.push("/detalleRestaurante", extra: data.resta[i]);
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
