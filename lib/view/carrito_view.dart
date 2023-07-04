import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hdt_flutter/widgets/app_bar.dart';

@RoutePage()
class CarritoView extends StatelessWidget {
  const CarritoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(context, AppLocalizations.of(context)!.carrito),
      body: Container(
        color: Colors.teal,
      ),
    );
  }
}
