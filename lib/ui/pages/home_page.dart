import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
        child: Container(
          color: Colors.blue,
          child: Transform.translate(
            //.translate
            //para rotacionar os componentes
            //transform: ,
            // transform: , //mudando pesctiva da imagem 3d
            offset: Offset(22, 60),
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    ));
  }
}
