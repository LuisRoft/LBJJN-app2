import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hdt_flutter/routers/app_route2.gr.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        appBarBuilder: (_, tabsRouter) {
          return AppBar(
            title: Text(
              context.tabsRouter.current.name,
            ),
            backgroundColor: Colors.transparent,
            centerTitle: true,
          );
        },
        routes: const [
          HomeView(),
          BuscarView(),
          FavoritosView(),
          CarritoView(),
          DeliveryView(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
              currentIndex: context.tabsRouter.activeIndex,
              onTap: (index) => context.tabsRouter.setActiveIndex(index),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.moped),
                  label: '',
                ),
              ],
            ));
  }
}
