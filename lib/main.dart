import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          //title:align(alignment:aling.center)
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
        //extedboby extende tamanho do body

        body: SafeArea(
          child: Column(
            //mainAxisSize: , //tamanho máximo possivel
            mainAxisAlignment: MainAxisAlignment
                .center, //vertical space around.espaço dispomnive , evenlu
            // crossAxisAlignment:
            //   CrossAxisAlignment.stretch, //prencher hozizontal  //horizontal
            //verticalDirection: VerticalDirection.up,//começa coluna de baixo
            children: [
              MyContainer(),
              MyContainer(),
              MyContainer(),
            ],
          ),
        ),

        //extendBodyBehindAppBar: , persistir botão mesmo se trocar de tela

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          selectedItemColor: Colors.blue,
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
                //color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: "Person",
              icon: Icon(
                Icons.person_outline_rounded,
                //color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: "shop",
              icon: Icon(
                Icons.shopping_bag_outlined,
                //color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: ,
      height: 100,

      margin: const EdgeInsets.all(24), //fora
      padding: const EdgeInsets.all(16), //dentro
      //alignment: Alignment.center,
      decoration: BoxDecoration(
        //desinger diz que bordar trás segurança par cliente
        borderRadius: BorderRadius.circular(16),

        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.4),
            offset: Offset(4.0, 4.0),
            blurRadius: 6,
          ),
        ],
        //shape: BoxShape,
        color: Colors.green,
      ),
      child: Row(//mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        const Icon(Icons.home),
        Expanded(
          child: Text(
            "Meu containerffdsfdssfsdfdsfsd",
            maxLines: 2,
            overflow: TextOverflow
                .ellipsis, //casp texto seja maior poem 3 pontos de continuo
            //semanticsLabel: ,dolar
            textAlign: TextAlign.center,
            //textScaleFactor: 1.0, almentar fonte do texto // se não aumenta no systema operacional n mexe com esse coisa // no material tem isso
            style: GoogleFonts.poppins(
                fontSize: 50,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                decoration: TextDecoration.lineThrough, //linha notextp
                //decorationStyle: TextDecorationStyle.dashed
                letterSpacing: 2.0),
          ),
        ),
        const Icon(Icons.home),
      ]),
    );
  }
}
