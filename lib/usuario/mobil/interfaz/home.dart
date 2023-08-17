import 'package:flutter/material.dart';
import '../../../widgets/drawer.dart';
import 'package:card_swiper/card_swiper.dart';

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
            title: Text(""),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/degrade.gif'),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('img/fondo.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Padding(
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
                            //color: Colors.orange[400],
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  width: size.width*1,
                                  height: 150,
                                  child:Stack(
                                    children: <Widget>[
                                      Positioned(
                                        child: Padding(
                                          padding: const EdgeInsets.all(0),
                                          child: Container(
                                            margin: EdgeInsets.only(top: imagen*0.7,left: imagen*0.5),
                                            width: size.width*0.4,
                                            height: 100,
                                            //color: Colors.green,
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
                                            margin: EdgeInsets.only(top: imagen*0.7,left: imagen*5.5),
                                            width: size.width*0.4,
                                            height: 100,
                                            //color: Colors.pink,
                                            child: Text(' BIENVENIDO ',
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  color: Colors.pink[100],
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: size.width*1,
                                  height: 95,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: size.width*0.22,
                                        height: 60,
                                        //color: Colors.blueAccent,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('img/vacuna.png'),

                                            )
                                        ),
                                      ),
                                      Container(
                                        width: size.width*0.23,
                                        height: 60,
                                        //color: Colors.blueAccent,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('img/alimento.png'),

                                            )
                                        ),
                                      ),
                                      Container(
                                        width: size.width*0.23,
                                        height: 60,
                                        //color: Colors.blueAccent,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('img/registro.png'),

                                            )
                                        ),
                                      ),
                                      Container(
                                        width: size.width*0.22,
                                        height: 60,
                                        //color: Colors.blueAccent,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('img/mas.png'),

                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  //color: Colors.blueAccent,
                                  width: size.width*1,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey[200],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: -imagen * 2.4,
                                          left: -imagen * 1.5,
                                        child: Padding(
                                          padding: const EdgeInsets.all(0),

                                        ),

                                      ),
                                      Positioned(
                                        top: size.width* 0.70,
                                        child: Padding(
                                          padding: const EdgeInsets.all(0),

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
                                            margin: EdgeInsets.only(top: imagen*13,left: imagen*0.5),
                                            width: size.width*0.9,
                                            height: size.height*0.1,
                                            color: Colors.green,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
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
                        height: 108,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          //color: Colors.grey[200],
                        ),
                        child: _swiper(),// BoxDecoration
                      ), // Container
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> images = [
    "img/porci.gif",
    "img/cerdosena.jpg",
    "img/senavideo.gif"
  ];

  Widget _swiper(){
    return Container(
      color: Colors.transparent,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.5,
        itemBuilder: (BuildContext context,int index){
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        //control: new SwiperControl(),
      ),
    );
  }

}


