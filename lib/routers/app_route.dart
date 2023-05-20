import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hdt_flutter/providers/menu_providers.dart';
import 'package:hdt_flutter/utils/const.dart';
import 'package:hdt_flutter/view/buscar_view.dart';
import 'package:hdt_flutter/view/carrito_view.dart';
import 'package:hdt_flutter/view/delivery_view.dart';
import 'package:hdt_flutter/view/favoritos_view.dart';
import 'package:hdt_flutter/view/home_view.dart';
import 'package:hdt_flutter/view/idioma_view.dart';
import 'package:hdt_flutter/view/login_view.dart';
import 'package:hdt_flutter/view/perfil_view.dart';
import 'package:hdt_flutter/view/restaurante_view.dart';
import 'package:provider/provider.dart';

String idioma = "/idioma";
String login = "/login";
String avatar = "/avatar";
String home = "/home";
String restaurante = "/restaurante/:id";

class AppRouter {
  static GoRouter config() {
    return GoRouter(
      initialLocation: "/",
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            final data = Provider.of<MenuProviders>(context);
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                systemOverlayStyle: SystemUiOverlayStyle.light,
                iconTheme: const IconThemeData(color: Colors.black),
                centerTitle: true,
                elevation: 0,
                toolbarHeight: 80,
                title: Stack(
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        state.location == "/"
                            ? Container(
                                height: 50,
                              )
                            : const Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: ClipRRect(
                                  // borderRadius: BorderRadius.all(Radius.circular(100)),
                                  child: CircleAvatar(
                                    radius: 25,
                                    // backgroundColor: Colors.red[800]!, // Color de fondo en caso de error
                                    child: Text('A'),
                                  ),
                                ),
                              ),
                      ],
                    ),
                    const Positioned(
                      left: -10,
                      top: -2,
                      child: Image(
                        image: AssetImage("assets/logo.png"),
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
              bottomNavigationBar: state.location == "/"
                  ? null
                  : BottomNavigationBar(
                      unselectedItemColor: secundario.withOpacity(0.6),
                      selectedIconTheme: IconThemeData(
                        color: secundario,
                      ),
                      iconSize: 40,
                      currentIndex: data.itemselect,
                      onTap: (value) {
                        data.setselect(value);
                        switch (value) {
                          case 0:
                            context.go("/home");
                            break;
                          case 1:
                            context.go("/buscar");
                            break;
                          case 2:
                            context.go("/carrito");
                            break;
                          case 3:
                            context.go("/favoritos");
                            break;
                          case 4:
                            context.go("/delivery");
                            break;
                          default:
                        }
                      },
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home_outlined),
                          label: "",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.search_outlined),
                          label: "",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.shopping_cart_outlined),
                          label: "",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.bookmark_outline),
                          label: "",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                            Icons.moped_outlined,
                          ),
                          label: "",
                        ),
                      ],
                    ),
              body: child,
            );
          },
          routes: [
            GoRoute(
              path: '/',
              name: '/',
              pageBuilder: (context, state) {
                return NoTransitionPage<void>(
                  key: state.pageKey,
                  restorationId: state.pageKey.value,
                  child: const IdiomaView(),
                );
              },
            ),
            GoRoute(
              path: '/login',
              name: '/login',
              pageBuilder: (context, state) {
                return NoTransitionPage<void>(
                  key: state.pageKey,
                  restorationId: state.pageKey.value,
                  child: const LoginView(),
                );
              },
            ),
            GoRoute(
                path: '/home',
                name: '/home',
                pageBuilder: (context, state) {
                  return NoTransitionPage<void>(
                    key: state.pageKey,
                    restorationId: state.pageKey.value,
                    child: const HomeView(),
                  );
                },
                routes: [
                  GoRoute(
                    path: 'restaurante',
                    name: 'restaurante',
                    pageBuilder: (context, state) {
                      return NoTransitionPage<void>(
                        key: state.pageKey,
                        restorationId: state.pageKey.value,
                        child: const RestaurantesView(),
                      );
                    },
                  ),
                ]),
            GoRoute(
              path: '/buscar',
              name: '/buscar',
              pageBuilder: (context, state) {
                return NoTransitionPage<void>(
                  key: state.pageKey,
                  restorationId: state.pageKey.value,
                  child: const BuscarView(),
                );
              },
            ),
            GoRoute(
              path: '/carrito',
              name: '/carrito',
              pageBuilder: (context, state) {
                return NoTransitionPage<void>(
                  key: state.pageKey,
                  restorationId: state.pageKey.value,
                  child: const CarritoView(),
                );
              },
            ),
            GoRoute(
              path: '/perfil',
              name: '/perfil',
              pageBuilder: (context, state) {
                return NoTransitionPage<void>(
                  key: state.pageKey,
                  restorationId: state.pageKey.value,
                  child: const PerfilView(),
                );
              },
            ),
            GoRoute(
              path: '/favoritos',
              name: '/favoritos',
              pageBuilder: (context, state) {
                return NoTransitionPage<void>(
                  key: state.pageKey,
                  restorationId: state.pageKey.value,
                  child: const FavoritosView(),
                );
              },
            ),
            GoRoute(
              path: '/delivery',
              name: '/delivery',
              pageBuilder: (context, state) {
                return NoTransitionPage<void>(
                  key: state.pageKey,
                  restorationId: state.pageKey.value,
                  child: const DeliveryView(),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
