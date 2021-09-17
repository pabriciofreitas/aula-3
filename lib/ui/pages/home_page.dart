import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.white,
        child: LayoutBuilder(
            //Para defenir se é celular ou tablet ou pc // pq da row que n faz
            builder: (context, constrainst) => Row(children: [
                  Container(
                    child: LayoutBuilder(
                      builder: (context, constrainst2) => Container(
                        width: constrainst2.maxWidth * 0.5,
                      ),
                    ),
                    color: Colors.red,
                    width: constrainst.maxWidth *
                        0.7, //pegando altura máxima width: constrainst.maxWidth * 0.1,
                  ),
                  Container(
                    color: Colors.green,
                    width: constrainst.maxWidth *
                        0.3, //pegando altura máxima width: constrainst.maxWidth * 0.1,
                  ),
                ])),
      ),
    ));
  }
}
