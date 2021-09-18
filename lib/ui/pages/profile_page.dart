import 'package:flutter/material.dart';

import 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //retorna o retorno da rota
    final arguments = ModalRoute.of(context)?.settings.arguments;
    //Responsável por retorna o modelo mais compativel com contexto fornecido

    Map<String, dynamic> argumentsMap = {};

    ProfileNavigationArguments profileArguments =
        ProfileNavigationArguments(text: "", nome: "", age: 0, height: 0);

    if (arguments is Map) {
      argumentsMap = arguments as Map<String, dynamic>;
    } else {}

    if (arguments is Map) {
      argumentsMap = arguments as Map<String, dynamic>;
    } else {
      NavigationArguments argumentsClass = arguments as NavigationArguments;
      profileArguments = argumentsClass.arguments as ProfileNavigationArguments;
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SizedBox.expand(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
                "Recebi um Profile do tipo ${argumentsMap.isNotEmpty ? argumentsMap["text"] : profileArguments.text}"),
            Text(
                "Nome: ${argumentsMap.isNotEmpty ? argumentsMap["name"] : profileArguments.nome}"),
            Text(
                "Age: ${argumentsMap.isNotEmpty ? argumentsMap["age"] : profileArguments.age}"),
            Padding(padding: EdgeInsets.symmetric(vertical: 16)),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Voltar para a home"),
            )
          ]),
        ),
      ),
    );
  }
}
