import 'package:flutter/material.dart';

class configurar extends StatelessWidget {

  MaterialColor mycolor = MaterialColor(Color.fromRGBO(229, 203, 206, 1).value, <int, Color>{
    50: Color.fromRGBO(229, 203, 206, 0.1),
    100: Color.fromRGBO(229, 203, 206, 0.2),
    200: Color.fromRGBO(229, 203, 206, 0.3),
    300: Color.fromRGBO(229, 203, 206, 0.4),
    400: Color.fromRGBO(229, 203, 206, 0.5),
    500: Color.fromRGBO(229, 203, 206, 0.6),
    600: Color.fromRGBO(229, 203, 206, 0.7),
    700: Color.fromRGBO(229, 203, 206, 0.8),
    800: Color.fromRGBO(229, 203, 206, 0.9),
    900: Color.fromRGBO(229, 203, 206, 1),
  },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CONFIGURACION",
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: confi(),
    );
  }
}

class confi extends StatefulWidget {
  const confi({super.key});

  @override
  State<confi> createState() => _confiState();
}

class _confiState extends State<confi> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
