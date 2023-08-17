import 'package:flutter/material.dart';
import 'package:porcicultura/usuario/mobil/sesion.dart';
import '../../widgets/contenedor.dart';
import '../../widgets/fondo.dart';

class inicio_home extends StatelessWidget {

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
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double imagen = size.width * 0.1;


    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: -imagen * 2.4,
                left: -imagen * 1.5,
                child: fondo(
                  size: size.width * 1.3,
                )
            ),
            Positioned(
              top: size.width* 0.70,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: contenedor(
                  size: size.width * 0.9,
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  margin: EdgeInsets.only(top: imagen*6.5,left: imagen*3),
                  width: size.width*0.4,
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  margin: EdgeInsets.only(top: imagen*10,left: imagen*1.5),
                  width: size.width*0.7,
                  height: size.height*0.1,
                  //color: Colors.green,
                  child: botton1(),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  margin: EdgeInsets.only(top: imagen*13,left: imagen*0.5),
                  width: size.width*0.9,
                  height: size.height*0.1,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container botton1(){
    return Container(
      margin: EdgeInsets.only(top: 8,left: 5,right: 5,bottom: 8),
      width: double.infinity,
      height: 50,

      //color: Colors.cyanAccent,

      child: ElevatedButton.icon(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>inicio_sesion()));
      },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Color.fromRGBO(222, 165, 164, 100); //<-- SEE HERE
              return null; // Defer to the widget's default.
            },
          ),
        ),
        icon: Icon(
          Icons.arrow_circle_right,
          color: Colors.white54,
          size: 30,
        ),
        label: Text(
          'INICIAR SESION',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }

}

