import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
          child: Column(
        children: [firstContainer(), SecondContainer()],
      )),
    ));
  }
}

class SecondContainer extends StatefulWidget {
  const SecondContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  late String name1;

  @override
  void initState() {
    name1 = "Freitas";
    //isso rodar no começo de tudo na renderização só pe chmado na inicialização da tela
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: Colors.green,
          child: Row(children: [
            Text(name1),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    name1 = "Pedro";
                  });
                },
                child: const Text("aaa"))
          ])),
    );
  }
}

class firstContainer extends StatelessWidget {
  firstContainer({
    Key? key,
  }) : super(key: key);
  //só recebe construtor fixo final ou const
  String name1 = "Pabricio";

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Center(
          child: Row(children: [
        Text(name1),
        ElevatedButton(
            onPressed: () {
              name1 = "Pedro";
            },
            child: const Text("aaa"))
      ])),
      color: Colors.blue,
    ));
  }
}
