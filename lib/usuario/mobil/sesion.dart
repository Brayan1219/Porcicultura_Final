import 'package:flutter/material.dart';
import 'package:porcicultura/usuario/mobil/registro.dart';
import '../../widgets/contenedor2.dart';
import 'interfaz/home.dart';

class inicio_sesion extends StatelessWidget {

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
      title: "INICIO SESION",
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: sesion(),
    );
  }
}

class sesion extends StatefulWidget {
  const sesion({super.key});

  @override
  State<sesion> createState() => _sesionState();
}

class _sesionState extends State<sesion> {
  bool _isObscure = true;

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
            image: AssetImage('img/sesion.jpg'),
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
                          image: AssetImage('img/cerdo.png'),
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
                  margin: EdgeInsets.only(top: imagen*9,left: imagen*0.5),
                  width: size.width*0.9,
                  height: size.height*0.45,
                  //color: Colors.green,
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
                          margin: EdgeInsets.only(top: 10,left: 60,right: 60),
                          decoration: BoxDecoration(
                          ),
                          child: contra(),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30 ),
                        child: Center(
                          child: ElevatedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>ini_usuario(),
                            )
                            );
                            //action
                          } , child: Text('INICIAR SESION'),
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
                            margin: EdgeInsets.only(left: imagen/2),
                            width: size.width*0.43,
                            height: 40,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=>regis_inisio(),
                                  )
                                  );
                                  //action
                                },
                                child: Text(' NO TENGO UNA CUENTA !',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.green[100],
                                      fontWeight: FontWeight.w700),
                                )
                            ),
                          ),
                          Container(
                            width: size.width*0.38,
                            height: 40,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=>regis_inisio(),
                                  )
                                  );
                                  //action
                                },
                                child: Text(' OLVIDE CONTRASEÑA ',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.green[100],
                                      fontWeight: FontWeight.w700),
                                )
                            ),
                          )
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

}

