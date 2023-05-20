import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hdt_flutter/utils/const.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RestaurantesView extends StatelessWidget {
  const RestaurantesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/logo.png',
      'assets/icono_resta.png',
      'assets/icono_resta.png',
      'assets/logo.png',
      'assets/logo.png',
      'assets/logo.png',
      'assets/logo.png',
      'assets/icono_resta.png',

      // Agrega aquí todas las rutas de tus imágenes
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: principal),
        leadingWidth: 140,
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
              ),
            )
          ],
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            itemResta(images[0], i: 0),
            const SizedBox(height: 10),
            SizedBox(
              height: images.length * 100,
              child: GridView.builder(
                itemCount: images.length - 1,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Número de columnas en la cuadrícula
                  mainAxisSpacing: 5.0, // Espacio vertical entre los elementos
                  crossAxisSpacing: 5.0, // Espacio horizontal entre los elementos
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  int i = index + 1;
                  return itemResta(images[i], height: 140, width: 300, i: i);
                },
              ),
            )
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: (images.length - 1),
            //   physics: const NeverScrollableScrollPhysics(),
            //   itemBuilder: (context, index) {
            //     final int firstImageIndex = index * 2 + 1;
            //     final int secondImageIndex = firstImageIndex + 1;
            //     return Row(
            //       children: <Widget>[
            //         Expanded(
            //           child: itemResta(images[firstImageIndex], height: 140, width: 300),
            //         ),
            //         images.length < (secondImageIndex + 1)
            //             ? Container(
            //                 child: Text("${images.length}"),
            //               )
            //             : Expanded(
            //                 child: itemResta(images[secondImageIndex], height: 140, width: 300),
            //               ),
            //       ],
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  Widget itemResta(String images, {double? height, double? width, required int i}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Image.asset(
            images,
            fit: BoxFit.cover,
            height: height,
            width: width,
            // height: 140,
            // width: 300,
          ),
          const Positioned(
            top: 20,
            left: 20,
            child: Icon(
              Icons.location_on_outlined,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: [
                const Text("Text Nombre"),
                const SizedBox(width: 5),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: (Random().nextInt(22) ~/ 2).isEven ? Colors.red : Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
