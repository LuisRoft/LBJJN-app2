import 'package:auto_route/auto_route.dart';

import 'app_route2.gr.dart';
import 'guard/auth_guard.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: RegisterView.page),
        AutoRoute(page: LoginView.page),
        AutoRoute(page: HomeView.page),
        AutoRoute(page: CarritoView.page, guards: [AuthGuard()]),
        AutoRoute(page: DeliveryView.page, guards: [AuthGuard()]),
        AutoRoute(page: FavoritosView.page, guards: [AuthGuard()]),
        AutoRoute(page: BuscarView.page),
        AutoRoute(page: PerfilView.page, guards: [AuthGuard()]),
        AutoRoute(page: PlatosRecomendadosView.page),
        AutoRoute(page: RestaurantesView.page),
        AutoRoute(page: MesasView.page),
        AutoRoute(page: MenuView.page),
        AutoRoute(page: IdiomaView.page),
      ];
}
