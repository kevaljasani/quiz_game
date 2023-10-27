import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quizgame/third.dart';

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

  List pic=["1.png","2.png","3.png","4.png","5.png"];
  List pic1=["background1.png"];
  List name=["one","two","three","four","five","six"];
  //List <bool> temp=List.filled(name.l.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text("Choose Level"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("pic/background1.png"),fit: BoxFit.fill)
            ),
          ),

          actions: [
            PopupMenuItem(child:
              Container(
                padding: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                height: 40,
                width: 90,

                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("pic/bulb_mark.png"))
                ),

                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text("hints" "\n131",
                    style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              )
            ),],
        ),

      body: ListView.builder(
        itemCount: pic.length,

        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return third();
              },));
            },
            child: Card(

              child: GestureDetector(

                onTapCancel: () {
                  t=false;
                  setState(() {

                  });
                  },

                  onTapDown: (details) {
                    t=true;
                    setState(() {

                    });
                  },

                  onTapUp: (details) {
                    t=false;
                    setState(() {

                    });
                  },


                child: ListTile(
                  title: Text("${index+1}"),
                  trailing: Icon(Icons.abc_sharp),
                  leading: Container(
                    height: 80,
                    width: 80,
                    child: Image(image: AssetImage("pic/${pic[index]}")),
                  ),
                ),
              ),
            ),
          );
        },)

    );
  }
}
