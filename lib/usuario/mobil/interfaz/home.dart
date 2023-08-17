import 'package:flutter/material.dart';

import '../../../widgets/drawer.dart';

class inicio extends StatelessWidget {
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
      title: "PORCICULTURA CBA",
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: ini_usuario(),
    );
  }
}

class ini_usuario extends StatefulWidget {
  const ini_usuario({super.key});

  @override
  State<ini_usuario> createState() => _ini_usuarioState();
}

class _ini_usuarioState extends State<ini_usuario> {
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
    final Size size = MediaQuery.of(context).size;
    final double imagen = size.width * 0.1;

    return Scaffold(
          drawer: drawer(),
          appBar: AppBar(
            title: Text("CLIENTE"),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/degrade.gif'),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
      body: Padding(
        padding: const EdgeInsets.all(8.8),
        child: Column(
          children: [
            AspectRatio(aspectRatio: 1,
              child: SizedBox(
                child: GridView.builder(
                  itemCount: 1,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.orange[400],
                        ),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.pink,
                              width: size.width*1,
                              height: size.height*0.2,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 78,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200],
                      ), // BoxDecoration
                    ), // Container
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

