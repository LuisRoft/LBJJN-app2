import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hdt_flutter/models/restaurante_model.dart';
import 'package:hdt_flutter/utils/const.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hdt_flutter/widgets/card_restaurantes.dart';

class RestaurantesView extends StatelessWidget {
  const RestaurantesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RestauranteModels> resta = [
      RestauranteModels(
        id: "1",
        nombre: "Pueblo Nuevo",
        imagen: 'assets/resta1.jpg',
        descripcion: "lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus et congue dolor. Sed posuere eleifend mi, sed malesuada felis maximus ut. Duis facilisis, ligula et faucibus luctus, purus dui commodo massa, et vestibulum lacus sem non diam.",
        estado: true,
        mesas: [],
        menu: [],
      ),
      RestauranteModels(
        id: "2",
        nombre: "Abdón Calderón",
        imagen: 'assets/resta2.jpg',
        descripcion: "lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus et congue dolor. Sed posuere eleifend mi, sed malesuada felis maximus ut. Duis facilisis, ligula et faucibus luctus, purus dui commodo massa, et vestibulum lacus sem non diam.",
        estado: true,
        mesas: [],
        menu: [],
      ),
      RestauranteModels(
        id: "3",
        nombre: "Alhajuela",
        imagen: 'assets/resta3.jpg',
        descripcion: "lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus et congue dolor. Sed posuere eleifend mi, sed malesuada felis maximus ut. Duis facilisis, ligula et faucibus luctus, purus dui commodo massa, et vestibulum lacus sem non diam.",
        estado: false,
        mesas: [],
        menu: [],
      ),
      RestauranteModels(
        id: "3",
        nombre: "Chirijos",
        imagen: 'assets/resta5.jpg',
        descripcion: "lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus et congue dolor. Sed posuere eleifend mi, sed malesuada felis maximus ut. Duis facilisis, ligula et faucibus luctus, purus dui commodo massa, et vestibulum lacus sem non diam.",
        estado: true,
        mesas: [],
        menu: [],
      ),
      RestauranteModels(
        id: "3",
        nombre: "San Plácido",
        imagen: 'assets/resta4.jpg',
        descripcion: "lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus et congue dolor. Sed posuere eleifend mi, sed malesuada felis maximus ut. Duis facilisis, ligula et faucibus luctus, purus dui commodo massa, et vestibulum lacus sem non diam.",
        estado: true,
        mesas: [],
        menu: [],
      ),
      // Agrega aquí todas las rutas de tus imágenes
    ];
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
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardRestaurantes(
              restaurante: resta[0],
              height: 175,
              onTap: () {
                context.push("/detalleRestaurante", extra: resta[0]);
              },
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: resta.length * 100,
              child: GridView.builder(
                itemCount: resta.length - 1,
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
                    restaurante: resta[i],
                    onTap: () {
                      context.push("/detalleRestaurante", extra: resta[i]);
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
