import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override //método responsavel por reconstruir a tela
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //const---ele não build isso navamente quando atualizar
      //evitar cirar funções que retorne widgets use staff ou staless
      //use constante em temas que n muda.
      //locale: ,Formata data
      //locale: Locale("pt", "BR"),
      //supportedLocales: ,//lista de locale
      //shortcuts: ,//atalhos
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //elevation: 0, // sobrar
          flexibleSpace: Container(
            height: 30,
            color: Colors.red,
          ),
          title: const Text("Use acamdemy"),
          centerTitle: true,
          //titleSpacing: ,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.book),
            )
          ],
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(12.0))),
          // leading: const Icon(Icons.menu),
        ),

        //
        drawer: Drawer(
          child: Column(),
        ),
        //
        backgroundColor: const Color(0xFFFFFFFF),
        //
        //extendBodyBehindAppBar: , persistir botão mesmo se trocar de tela

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          selectedLabelStyle: const TextStyle(
            color: Colors.white,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.blue[100],
          ),
          //showSelectedLabels: true,
          //debugPrint
          onTap: (value) => print(value),
          items: [
            BottomNavigationBarItem(
              label: "Inicio",
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: "Person",
              icon: Icon(
                Icons.person_outline_rounded,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: "shop",
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
