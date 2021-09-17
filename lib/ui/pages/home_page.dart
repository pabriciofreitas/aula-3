import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
        child: Container(
          color: Colors.white,
          child: GridView.builder(
            //itemCount: , //número de intens no máximo
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
            //addAutomaticKeepAlives: , matem os widgis criado
            physics: const BouncingScrollPhysics(), // controlar o scroll
            itemBuilder: (context, index) => Container(
              color: Colors.lightGreen,
              height: 200,
            ),
          ),
        ),
      ),
    ));
  }
}
