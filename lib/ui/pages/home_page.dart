import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
        child: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text("Titulo"),
            subtitle: Text("subTitulo"),
            leading: CircleAvatar(
              // backgroundColor: Colors.blue,
              child: Text("T"),
              backgroundImage:
                  Image.asset("lib/assets/images/image01.jpg").image,
              //onBackgroundImageError: , //caso a imagem der erro
              //foregroundColor: , a foto por cima
            ),
            //trailing: InkWell(
            //  onTap: () => debugPrint("on tap $index"),
            //  child: Icon(Icons
            //     .edit_outlined)), //depois do tituilo iconButton===MAIs completo
            //enabled: ,se usaario consegue interagir com usuario
            tileColor: Colors.blue[200],
            //horizontalTitleGap: 32, espaçamento
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            onTap: () => debugPrint("on tap $index"),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemCount: 20,
        ),
      ),
    ));
  }
}
