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
              child: Stack(alignment: Alignment.center,
                  // fit: StackFit.expand, //fit redimenciona os filhos

                  children: [
                    Positioned(
                        left: 0,
                        top: 0,
                        height: 100,
                        width: 200,
                        child: Container(
                          color: Colors.pink,
                        )),
                    Container(
                      constraints: BoxConstraints(
                        minHeight: 400,
                        minWidth: 300,
                      ),
                      height: 400,
                      width: 300,
                      color: Colors.amber,
                    ),
                  ])),
        ),
      ),
    );
  }
}
