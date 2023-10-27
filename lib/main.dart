import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizgame/second.dart';

void main()
{
  runApp(MaterialApp(home: first(),
  debugShowCheckedModeBanner: false,));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(children: [

        Container(
          height: 30,
        width: double.infinity,
        color: Colors.black,),

        Row(children: [
            Container(
              height: 130,
              width: 380,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("pic/top_logos.png"),fit: BoxFit.fill)
              ),

              child: Column(
                children: [
                Row(children: [
                  Container(
                    margin: EdgeInsets.only(top: 30,left: 15),
                    padding: EdgeInsets.only(top: 15),
                    height: 50,
                    width: 170,
                    child: Text("LOGO GAME",style: TextStyle(fontSize: 27),),
                  ),
                ],),

//-----------------------------------------------------------------------------------------------------------------
                Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,bottom: 10),
                    padding: EdgeInsets.only(bottom: 15),
                    height: 40,
                    width: 250,
                    child: Text("Quiz your brands knowledge",style: TextStyle(fontSize: 18)),
                  )
                ],)
              ],),
            ),
          ],),

//-----------------------------------------------------------------------------------------------------------------

        InkWell(onTap: () {

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return second();
          },));

        },
        child: Container(
          margin: EdgeInsets.only(top: 80),
          alignment: Alignment.center,
          height: 200,
          width: 200,
          child: Text("PLAY",style: TextStyle(fontSize: 30),),
          decoration: BoxDecoration(
              color: Colors.blue.shade800,
              borderRadius: BorderRadius.all(Radius.circular(100)),

          ),
        ),
        ),

//-----------------------------------------------------------------------------------------------------------------

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

          Container(
            margin: EdgeInsets.only(top: 140),
            height: 50,
            width: 50,
            child: Image(image: AssetImage("pic/ranking.png")),
          ),

//-----------------------------------------------------------------------------------------------------------------
          Container(
            margin: EdgeInsets.only(top: 140),
            height: 50,
            width: 50,
            child: Image(image: AssetImage("pic/clicked.png")),
          ),

//-----------------------------------------------------------------------------------------------------------------
          Container(
            margin: EdgeInsets.only(top: 140),
            height: 50,
            width: 50,
            child: Image(image: AssetImage("pic/achievements.png")),
          )
        ],),

//-----------------------------------------------------------------------------------------------------------------

        Container(
          margin: EdgeInsets.only(top: 105),
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("pic/logos.png"),fit: BoxFit.fill)
          ),
        )
      ],)

    );
  }
}

