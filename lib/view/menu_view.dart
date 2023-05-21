import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hdt_flutter/models/menu_model.dart';
import 'package:hdt_flutter/models/restaurante_model.dart';
import 'package:hdt_flutter/utils/const.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart' show groupBy;

class MenuView extends StatelessWidget {
  const MenuView({super.key, required this.data});
  final RestauranteModels data;
  @override
  Widget build(BuildContext context) {
    final groupedMenu = groupBy(data.menu, (MenuModels dish) => dish.categoria);
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
              AppLocalizations.of(context)!.menu,
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
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: groupedMenu.length,
              itemBuilder: (context, index) {
                final category = groupedMenu.keys.toList()[index];
                final categoryDishes = groupedMenu[category]!;
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        category,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: categoryDishes.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 16, right: 8, top: 20),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            FittedBox(
                                              child: Text(
                                                categoryDishes[index].nombre,
                                                overflow: TextOverflow.ellipsis,
                                                softWrap: true,
                                                style: const TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              categoryDishes[index].precio,
                                              style: const TextStyle(fontSize: 18),
                                            ),
                                            const SizedBox(height: 15),
                                            FittedBox(
                                              child: TextButton(
                                                onPressed: () {},
                                                child: const Row(
                                                  children: [
                                                    Icon(Icons.add),
                                                    Text(
                                                      "Añadir al carrito",
                                                      style: TextStyle(fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        iconSize: 40, // Tamaño del icono
                                        icon: Icon(
                                          Icons.bookmark_outline,
                                          color: secundario,
                                        ),
                                        onPressed: () {
                                          // Acción al presionar el botón
                                        },
                                      ),
                                      SizedBox(
                                        height: 110,
                                        width: 170,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: CachedNetworkImage(
                                            imageUrl: categoryDishes[index].imagen,
                                            progressIndicatorBuilder: (context, url, downloadProgress) => Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Material(
                                                  color: Colors.transparent,
                                                  child: CircularProgressIndicator(
                                                    value: downloadProgress.progress,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            errorWidget: (context, url, error) {
                                              return const Icon(Icons.error);
                                            },
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      categoryDishes[index].ingredientes,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  const Divider(
                                    color: Colors.black12,
                                    thickness: 1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
