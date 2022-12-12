import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItem(this.title, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        // borderRadius: BorderRadius.circular(20),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        // color: color,
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.6),
            color,
            color,
            color,
            color.withOpacity(0.6),
          ],
          tileMode: TileMode.mirror,
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
