import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItem(this.title, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        // shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        // borderRadius: BorderRadius.only(
        //   topRight: Radius.circular(10),
        //   bottomLeft: Radius.circular(10),
        // ),
        color: color,
        // gradient: LinearGradient(
        //   colors: [
        //     color.withOpacity(7),
        //     color,
        //   ],
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        // ),

      ),
      child: Text(
        title,
      ),
    );
  }
}
