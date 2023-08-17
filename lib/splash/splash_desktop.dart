import 'package:flutter/material.dart';

class SplashDesktop extends StatefulWidget {
  const SplashDesktop({Key? key}) : super(key: key);

  @override
  State<SplashDesktop> createState() => _SplashDesktopState();
}

class _SplashDesktopState extends State<SplashDesktop> {
  @override

  //Forma para llamar al metodo

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(8.8),
        child: Column(
          children: [
            AspectRatio(aspectRatio: 10,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 1,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 10),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.pink[200],
                        ), // BoxDecoration
                      ), // Container
                    );
                  },
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 7,
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