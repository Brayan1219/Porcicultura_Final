import 'package:flutter/material.dart';
import 'package:porcicultura/usuario/mobil/sesion.dart';

import '../../widgets/contenedor2.dart';

class regis_inisio extends StatelessWidget {
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
      title: "REGISTRO",
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: registro(),
    );
  }
}

class registro extends StatefulWidget {
  const registro({super.key});

  @override
  State<registro> createState() => _registroState();
}

class _registroState extends State<registro> {
  bool _isObscure = true;
  bool _isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double imagen = size.width * 0.1;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('img/regis.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: size.width* 0.50,
              left: imagen*0.5,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: contenedor2(
                  size: size.width * 0.8,
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  margin: EdgeInsets.only(top: imagen*4.5,left: imagen*2.5),
                  width: size.width*0.45,
                  height: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('img/cerdo1.png'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  margin: EdgeInsets.only(top: imagen*8,left: imagen*0.5),
                  width: size.width*0.9,
                  height: size.height*0.50,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(top: 10,left: 60,right: 60),
                          decoration: BoxDecoration(
                          ),
                          child: usuario(),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(top: 5,left: 60,right: 60),
                          decoration: BoxDecoration(
                          ),
                          child: contra(),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(top: 5,left: 60,right: 60),
                          decoration: BoxDecoration(
                          ),
                          child: contra2(),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30 ,left: imagen*2.2),
                            child: Center(
                              child: ElevatedButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>inicio_sesion(),
                                )
                                );
                                //action
                              } , child: Text('REGISTRAR'),
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(MaterialState.pressed))
                                        return Color.fromRGBO(121, 101, 178, 100); //<-- SEE HERE
                                      return null; // Defer to the widget's default.
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30 ,left: 10),
                            child: Center(
                              child: ElevatedButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>inicio_sesion(),
                                )
                                );
                                //action
                              } , child: Tooltipicono(),
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(MaterialState.pressed))
                                        return Color.fromRGBO(121, 101, 178, 100); //<-- SEE HERE
                                      return null; // Defer to the widget's default.
                                    },
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  margin: EdgeInsets.only(top: imagen*14.8,left: imagen*0.5),
                  width: size.width*0.9,
                  height: size.height*0.1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: imagen*2.2,top: 5),
                            width: size.width*0.43,
                            height: 40,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=>inicio_sesion(),
                                  )
                                  );
                                  //action
                                },
                                child: Text(' YA TENGO UNA CUENTA !',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.green[100],
                                      fontWeight: FontWeight.w700),
                                )
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Color.fromRGBO(229, 203, 206, 0.5),
                        width: double.infinity,
                        height: 2,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container usuario(){
    return Container(
      height: 60,
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail,color: Color.fromRGBO(229, 203, 206, 1),size: 25),
          hintText: 'Ingrese Gmail',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'CORREO',
          labelStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container contra(){
    return Container(
      height: 60,
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        obscureText: _isObscure,
        decoration: InputDecoration(
          // prefixIcon: Icon(Icons.password_sharp,color: Color.fromRGBO(150, 137, 166, 50),size: 35),
          hintText: 'Ingrese Contraseña',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'CONTRASEÑA',
          suffixIcon: IconButton(
              icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              }),
          labelStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),

        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container contra2(){
    return Container(
      height: 60,
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        obscureText: _isObscure2,
        decoration: InputDecoration(
          // prefixIcon: Icon(Icons.password_sharp,color: Color.fromRGBO(150, 137, 166, 50),size: 35),
          hintText: 'Ingrese Contraseña',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'CONTRASEÑA',
          suffixIcon: IconButton(
              icon: Icon(
                  _isObscure2 ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure2 = !_isObscure2;
                });
              }),
          labelStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),

        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }
}

class Tooltipicono extends StatelessWidget {
  const Tooltipicono({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      message: 'Rh',
      child: Icon(Icons.g_mobiledata),
    );
  }
}
