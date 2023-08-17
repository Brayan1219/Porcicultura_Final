import 'package:flutter/material.dart';

class fondo extends StatelessWidget {
  final double size;
  fondo({Key? key,required this.size}) : assert(size != null && size > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('img/senavideo.gif'),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
