import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context)
              .size
              .height, //resolução da tela, mmidia da telea
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: Image.asset('lib/assets/images/image01.jpg').image,
              fit: BoxFit.cover,
            ),
          ), //image. memory banco de daods convertico em int
          // child: ,
        ),
      ),
    );
  }
}
