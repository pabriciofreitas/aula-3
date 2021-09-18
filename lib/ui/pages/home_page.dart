import 'package:flutter/material.dart';

import 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
          child: Column(
        children: [FirstContainer(), SecondContainer()],
      )),
    ));
  }
}

//control + D para seleciona mesma palavra.

class SecondContainer extends StatefulWidget {
  const SecondContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class NavigationArguments {
  final String routeName;
  final Object? arguments;

  NavigationArguments({
    required this.routeName,
    this.arguments,
  });
}

class ProfileNavigationArguments {
  final String text;
  final String nome;
  final int age;
  final double height;

  ProfileNavigationArguments({
    required this.text,
    required this.nome,
    required this.age,
    required this.height,
  });
}

class _SecondContainerState extends State<SecondContainer> {
  late String text;
  late int age;
  late String name;
  late double height;

  @override
  void initState() {
    //    loadData(); é interessante chama dados da api no initState para não fica chamando toda hora!
    //essa função é chamada no primeiro build da aplicação
    //Estou iniciando as variaveis
    text = 'objeto';
    name = 'Pabricio 2';
    age = 21;
    height = 1.80;
    //Essa função servi para confirma se arvore de widgets foi contruida corretamente
    super.initState();
  }

  void goToProfilePage() {
    final ProfileNavigationArguments profileArguments =
        ProfileNavigationArguments(
            text: text, nome: name, age: age, height: height);

    final NavigationArguments arguments =
        NavigationArguments(routeName: "/profile", arguments: profileArguments);

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilePage(),
          //widgets responsável por pass dados para outra tela
          settings: RouteSettings(
            name: "/profile",
            arguments: arguments,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: Colors.green[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nome: $name"),
              Text("Idade: $age"),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Passando um " + text),
                  const SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: goToProfilePage,
                    child: const Text("Ir para tela"),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

class FirstContainer extends StatelessWidget {
  FirstContainer({
    Key? key,
  }) : super(key: key);

  //só recebe construtor fixo final ou const
  final String text = "map";
  String name = "Pabricio 1";
  int age = 21;

  void goToProfilePage(context) {
    final Map<String, dynamic> arguments = {
      "text": text,
      "name": name,
      "age": age
    };

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfilePage(),
        //widgets responsável por passar os dados para outra tela
        settings: RouteSettings(name: "/profile", arguments: arguments),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Colors.blue[100],
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("nome: $name"),
        Text("idade: $age"),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Passando um " + text),
            const SizedBox(width: 16.0),
            ElevatedButton(
                //StatelessWidget tem que passar contexto
                onPressed: () => goToProfilePage(context),
                child: const Text("Ir para tela"))
          ],
        ),
      ]),
    ));
  }
}
