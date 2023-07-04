// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:hdt_flutter/models/restaurante_model.dart' as _i17;
import 'package:hdt_flutter/view/buscar_view.dart' as _i1;
import 'package:hdt_flutter/view/carrito_view.dart' as _i2;
import 'package:hdt_flutter/view/delivery_view.dart' as _i3;
import 'package:hdt_flutter/view/detalle_restaurante_view.dart' as _i4;
import 'package:hdt_flutter/view/favoritos_view.dart' as _i5;
import 'package:hdt_flutter/view/home_view.dart' as _i6;
import 'package:hdt_flutter/view/idioma_view.dart' as _i7;
import 'package:hdt_flutter/view/login_view.dart' as _i8;
import 'package:hdt_flutter/view/menu_view.dart' as _i9;
import 'package:hdt_flutter/view/mesas_view.dart' as _i10;
import 'package:hdt_flutter/view/perfil_view.dart' as _i11;
import 'package:hdt_flutter/view/platos_recomendados_view.dart' as _i12;
import 'package:hdt_flutter/view/register_view.dart' as _i13;
import 'package:hdt_flutter/view/restaurante_view.dart' as _i14;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    BuscarView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BuscarView(),
      );
    },
    CarritoView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CarritoView(),
      );
    },
    DeliveryView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DeliveryView(),
      );
    },
    DetalleRestauranteView.name: (routeData) {
      final args = routeData.argsAs<DetalleRestauranteViewArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DetalleRestauranteView(
          key: args.key,
          data: args.data,
        ),
      );
    },
    FavoritosView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FavoritosView(),
      );
    },
    HomeView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeView(),
      );
    },
    IdiomaView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.IdiomaView(),
      );
    },
    LoginView.name: (routeData) {
      final args =
          routeData.argsAs<LoginViewArgs>(orElse: () => const LoginViewArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.LoginView(key: args.key),
      );
    },
    MenuView.name: (routeData) {
      final args = routeData.argsAs<MenuViewArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.MenuView(
          key: args.key,
          data: args.data,
        ),
      );
    },
    MesasView.name: (routeData) {
      final args = routeData.argsAs<MesasViewArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.MesasView(
          key: args.key,
          data: args.data,
        ),
      );
    },
    PerfilView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.PerfilView(),
      );
    },
    PlatosRecomendadosView.name: (routeData) {
      final args = routeData.argsAs<PlatosRecomendadosViewArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.PlatosRecomendadosView(
          key: args.key,
          data: args.data,
        ),
      );
    },
    RegisterView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.RegisterView(),
      );
    },
    RestaurantesView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.RestaurantesView(),
      );
    },
  };
}

/// generated route for
/// [_i1.BuscarView]
class BuscarView extends _i15.PageRouteInfo<void> {
  const BuscarView({List<_i15.PageRouteInfo>? children})
      : super(
          BuscarView.name,
          initialChildren: children,
        );

  static const String name = 'BuscarView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CarritoView]
class CarritoView extends _i15.PageRouteInfo<void> {
  const CarritoView({List<_i15.PageRouteInfo>? children})
      : super(
          CarritoView.name,
          initialChildren: children,
        );

  static const String name = 'CarritoView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DeliveryView]
class DeliveryView extends _i15.PageRouteInfo<void> {
  const DeliveryView({List<_i15.PageRouteInfo>? children})
      : super(
          DeliveryView.name,
          initialChildren: children,
        );

  static const String name = 'DeliveryView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DetalleRestauranteView]
class DetalleRestauranteView
    extends _i15.PageRouteInfo<DetalleRestauranteViewArgs> {
  DetalleRestauranteView({
    _i16.Key? key,
    required _i17.RestauranteModels data,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          DetalleRestauranteView.name,
          args: DetalleRestauranteViewArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'DetalleRestauranteView';

  static const _i15.PageInfo<DetalleRestauranteViewArgs> page =
      _i15.PageInfo<DetalleRestauranteViewArgs>(name);
}

class DetalleRestauranteViewArgs {
  const DetalleRestauranteViewArgs({
    this.key,
    required this.data,
  });

  final _i16.Key? key;

  final _i17.RestauranteModels data;

  @override
  String toString() {
    return 'DetalleRestauranteViewArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i5.FavoritosView]
class FavoritosView extends _i15.PageRouteInfo<void> {
  const FavoritosView({List<_i15.PageRouteInfo>? children})
      : super(
          FavoritosView.name,
          initialChildren: children,
        );

  static const String name = 'FavoritosView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeView]
class HomeView extends _i15.PageRouteInfo<void> {
  const HomeView({List<_i15.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.IdiomaView]
class IdiomaView extends _i15.PageRouteInfo<void> {
  const IdiomaView({List<_i15.PageRouteInfo>? children})
      : super(
          IdiomaView.name,
          initialChildren: children,
        );

  static const String name = 'IdiomaView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginView]
class LoginView extends _i15.PageRouteInfo<LoginViewArgs> {
  LoginView({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          LoginView.name,
          args: LoginViewArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i15.PageInfo<LoginViewArgs> page =
      _i15.PageInfo<LoginViewArgs>(name);
}

class LoginViewArgs {
  const LoginViewArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'LoginViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.MenuView]
class MenuView extends _i15.PageRouteInfo<MenuViewArgs> {
  MenuView({
    _i16.Key? key,
    required _i17.RestauranteModels data,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          MenuView.name,
          args: MenuViewArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'MenuView';

  static const _i15.PageInfo<MenuViewArgs> page =
      _i15.PageInfo<MenuViewArgs>(name);
}

class MenuViewArgs {
  const MenuViewArgs({
    this.key,
    required this.data,
  });

  final _i16.Key? key;

  final _i17.RestauranteModels data;

  @override
  String toString() {
    return 'MenuViewArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i10.MesasView]
class MesasView extends _i15.PageRouteInfo<MesasViewArgs> {
  MesasView({
    _i16.Key? key,
    required _i17.RestauranteModels data,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          MesasView.name,
          args: MesasViewArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'MesasView';

  static const _i15.PageInfo<MesasViewArgs> page =
      _i15.PageInfo<MesasViewArgs>(name);
}

class MesasViewArgs {
  const MesasViewArgs({
    this.key,
    required this.data,
  });

  final _i16.Key? key;

  final _i17.RestauranteModels data;

  @override
  String toString() {
    return 'MesasViewArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i11.PerfilView]
class PerfilView extends _i15.PageRouteInfo<void> {
  const PerfilView({List<_i15.PageRouteInfo>? children})
      : super(
          PerfilView.name,
          initialChildren: children,
        );

  static const String name = 'PerfilView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.PlatosRecomendadosView]
class PlatosRecomendadosView
    extends _i15.PageRouteInfo<PlatosRecomendadosViewArgs> {
  PlatosRecomendadosView({
    _i16.Key? key,
    required _i17.RestauranteModels data,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          PlatosRecomendadosView.name,
          args: PlatosRecomendadosViewArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'PlatosRecomendadosView';

  static const _i15.PageInfo<PlatosRecomendadosViewArgs> page =
      _i15.PageInfo<PlatosRecomendadosViewArgs>(name);
}

class PlatosRecomendadosViewArgs {
  const PlatosRecomendadosViewArgs({
    this.key,
    required this.data,
  });

  final _i16.Key? key;

  final _i17.RestauranteModels data;

  @override
  String toString() {
    return 'PlatosRecomendadosViewArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i13.RegisterView]
class RegisterView extends _i15.PageRouteInfo<void> {
  const RegisterView({List<_i15.PageRouteInfo>? children})
      : super(
          RegisterView.name,
          initialChildren: children,
        );

  static const String name = 'RegisterView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RestaurantesView]
class RestaurantesView extends _i15.PageRouteInfo<void> {
  const RestaurantesView({List<_i15.PageRouteInfo>? children})
      : super(
          RestaurantesView.name,
          initialChildren: children,
        );

  static const String name = 'RestaurantesView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
