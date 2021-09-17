import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
        child: Container(
          color: Colors.amber,
          child: IgnorePointer(
            //ignora o toque
            child: ElevatedButton(
                onPressed: () => debugPrint('apertou'), child: Text("aaaaaaa")),
          ),
          /* on pressed true? faz: retorna null*/
        ),
      ),
    ));
  }
}
