import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerFloat, //localixação do button
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          //heroTag: ,
          //isExtended: ,//expandirr botãspo
          splashColor: Colors.red[400], //cor enquando segura
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: SizedBox.expand(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        primary: Colors.red,
                        onPrimary: Colors.white,
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      ),
                      onLongPress: () => debugPrint("Pessionou e segurous"),
                      onPressed: () => debugPrint("elevationButton onPress"),
                      child: Text("elevationButton")),
                  OutlinedButton(
                      //trocar a bordar
                      onPressed: () {},
                      child: Text("outlinedbutton")),
                  TextButton(onPressed: () {}, child: Text("textbutton"))
                ],
              ),
            ),
          ),
        ));
  }
}
