import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: 200,
        color: Colors.white,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          //reverse: true,
          scrollDirection: Axis.horizontal,

          itemBuilder: (context, index) {
            final String text = "Item ${index + 1}";
            final String date = DateTime.now().day.toString();
            return Container(
              color: Colors.black,
              height: 200,
              child: Text(
                "$text - $date",
                style: TextStyle(color: Colors.white),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
          itemCount: 10,
        ),
      ),
    ));
  }
}
