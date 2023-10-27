import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: third(),));
}

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {

  List pic1=["fb_icon.png","mercedes.png","adidas.png","redbull.png","starbucks.png","toyota.png","mcdonalds.png",
    "google.png","shell.png","kitty.png","honda.png","amazon.png","dell.png","lacoste.png","volkswagen.png",
  "dropbox.png","nike.png","burger_king.png","visa.png","apple.png","louis_vuitton.png","audi.png","citroen.png",
    "intel.png","barbie.png","wikipedia.png","ebay.png","twitter.png","android.png","instagram.png","rm_and_ms.png",
    "chrome.png", "nintendo.png","pizzahut.png","nbc.png","dr_pepper.png","panasonic.png","mobil.png","cnn.png",
  "pinterest.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(

        centerTitle: true,
        title: Text("LEVEL"),
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

      body: GridView.builder(
        itemCount: pic1.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 20,right: 25,top: 20),
              height: 90,
              width: 90,
              child: Image(image: AssetImage("pic/${pic1[index]}")),
            );
        },),
    );
  }
}
