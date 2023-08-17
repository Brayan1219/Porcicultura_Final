import 'package:flutter/material.dart';

class contenedor extends StatelessWidget {
  final double size;
  contenedor({Key? key,required this.size}) : assert(size != null && size > 0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.white,
        ),
      ),
    );
  }
}
