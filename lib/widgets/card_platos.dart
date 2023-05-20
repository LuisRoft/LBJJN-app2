import 'package:flutter/material.dart';
import 'package:hdt_flutter/models/menu_model.dart';

class CardPlatos extends StatelessWidget {
  const CardPlatos({super.key, required this.menu, this.height, this.width, required this.onTap});
  final MenuModels menu;
  final double? height;
  final double? width;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.saturation),
                child: Image(
                  image: AssetImage(menu.imagen),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.low,
                  height: height,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
