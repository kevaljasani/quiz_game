import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: second(),));
}

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          actions: [
            PopupMenuButton(itemBuilder: (context) => [
              PopupMenuItem(child: Image.asset("pic/"))
            ],)
          ],
        ),

        body: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                height: 30,
                width: 30,
                child: Image.asset("pic/arrow_left.png"),
              ),

              Container(
                margin: EdgeInsets.only(top: 80),
                height: 250,
                width: 250,
                child: Image.asset("pic/1_twitter.png"),
              ),

              Container(
                margin: EdgeInsets.only(top: 100),
                height: 30,
                width: 30,
                child: Image.asset("pic/arrow_right.png"),
              )
            ],),

          Row(children: [
            GridView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3),
              itemBuilder: (context, index) {
                return Container(
                  height: 10,
                  width: 10,
                  color: Colors.black,
                );
              },)
          ],)

        ],)

    );
  }
}
