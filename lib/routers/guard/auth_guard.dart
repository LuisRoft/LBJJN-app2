import 'package:auto_route/auto_route.dart';
import 'package:hdt_flutter/routers/app_route2.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push(LoginView());
  }
}
