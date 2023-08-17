import 'package:flutter/material.dart';
import '../usuario/mobil/home_inicio.dart';

class SplashMobil extends StatefulWidget {
  const SplashMobil({Key? key}) : super(key: key);

  @override
  State<SplashMobil> createState() => _SplashMobilState();
}

class _SplashMobilState extends State<SplashMobil> {
  @override

  //Forma para llamar al metodo
    void initState(){
      Future.delayed(Duration(seconds: 0), (){//7
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => inicio_home())
        );
      });

      super.initState();
    }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/fondo.gif'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 400,
              margin: EdgeInsets.only(top: 100),
              //child: Lottie.asset('img/cerdito.json'),
            ),
          ],
        ),
      )
    );
  }
}