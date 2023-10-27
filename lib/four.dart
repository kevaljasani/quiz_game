import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: four(),
    debugShowCheckedModeBanner: false,));
}

class four extends StatefulWidget {
  const four({super.key});

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {

  int cur_level=0;
  List ans=["twitter","nike","mercedes","honda","audi","apple","amazon","adidas","bmw"];
  List option=[];
  List pos=[];
  List userans=[];
  List a=["a","f","i","e","t","m","x","q","j","c","o","s","l","b","y"];

  List img=["twitter.png","nike.png","mercedes.png","honda.png","audi.png","apple.png","amazon.png","adidas.png",
    "bmw.png"];

  PageController _pageController= PageController(initialPage: 0);

  @override
  void initState() {

    option=List.filled(14, "");
    pos=List.filled(14, "");
    userans=List.filled(ans[cur_level].toString().length, "");


    for(int i=0  ; i < ans[cur_level].toString().length ; i++)
    {

      option[i]= ans[cur_level].toString()[i];
      setState(() {

      });
    }

    for(int i = ans[cur_level].toString().length ; i < 14 ; i++)
    {
      //option[i] = a[i] ;
    }
    option.shuffle();
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text("logo 39 / 40"),
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

            )),
          ],
        ),



        body: PageView.builder(
          controller: _pageController,
          itemCount: img.length,
          itemBuilder: (context, index) {
            return Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {

                      _pageController?.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 70),
                      height: 30,
                      width: 30,
                      child: Image.asset("pic/arrow_left.png"),
                    ),
                  ),

//-----------------------------------------------------------------------------------------------------------------
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    height: 250,
                    width: 250,
                    child: Image.asset("pic/${img[index]}"),
                  ),

//-----------------------------------------------------------------------------------------------------------------
                  InkWell(
                    onTap: () {

                      _pageController?.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 70),
                      height: 30,
                      width: 30,
                      child: Image.asset("pic/arrow_right.png"),
                    ),
                  )
                ],),

//-----------------------------------------------------------------------------------------------------------------

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                    height: 35,
                    width: 35,
                    child: Image.asset("pic/fb_icon.png"),
                  ),

//-----------------------------------------------------------------------------------------------------------------
                  Container(
                    margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                    height: 35,
                    width: 35,
                    child: Image.asset("pic/circle_points_green.png"),

                  )
                ],),

//-----------------------------------------------------------------------------------------------------------------
              //ans[cur_level].toString().length
              Wrap(children:
              List.generate(ans[cur_level].toString().length,
                      (index) => InkWell(
                    onTap: () {

                      if(userans[index] != "")
                      {
                        option[pos[index]]=userans[index];
                        userans[index]="";
                        setState(() {

                        });
                      }
                    },
                    child: Container(
                      alignment: Alignment.center ,
                      margin: EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      child: Text("${userans[index]}",
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),

                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(7)
                      ),
                    ),
                  )).toList(),
              ),


//-----------------------------------------------------------------------------------------------------------------

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment. center,
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.only(left: 30),
                    height: 150,
                    width: 200,
                    child: Text("Use hints",style: TextStyle(fontSize: 22,color: Colors.white),),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("pic/hints_clicked.png"),)
                    ),
                  ),

//-----------------------------------------------------------------------------------------------------------------
                  InkWell(
                    onTap: () {

                      userans = " " as List;
                      setState(() {

                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("pic/clear_clicked.png"),
                    ),
                  ),

//-----------------------------------------------------------------------------------------------------------------
                  InkWell(
                    onTap: () {
                      userans=userans.sublist(0,userans.last-1);
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 50,
                      width: 50,
                      child: Image.asset("pic/back_clicked.png"),
                    ),
                  )
                ],),

//-----------------------------------------------------------------------------------------------------------------

              Expanded(child: Row(children: [
                Expanded(child: GridView.builder(
                  itemCount: 14,
                  padding: EdgeInsets.only(left: 10,right: 10),

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return (option[index]  != "") ?
                    InkWell(
                      onTap: () {

                        for(int i=0 ; i < userans.length ; i++)
                        {
                          if(userans[i] == "")
                          {
                            userans[i] = option[index];
                            pos[i]=index;
                            option[index]="";
                            setState(() {

                            });
                          }
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,
                        child: Text("${option[index]}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ): Text("");
                  },))
              ],)
              ),


//-----------------------------------------------------------------------------------------------------------------

              Expanded(child: Row(children: [
                Expanded(child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 60,
                  width: double.infinity,
                  color: Colors.black,
                ))
              ],))


            ],);
          },)
    );
  }
}


// GridView.builder(
// itemCount: 7,
// padding: EdgeInsets.only(left: 35,right: 35,top: 20),
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 7,
// mainAxisSpacing: 4,
// crossAxisSpacing: 4), itemBuilder:  (context, index) {
// return Container(
// height: 5,
// width: 5,
//
// decoration: BoxDecoration(
// color: Colors.black54,
// borderRadius: BorderRadius.circular(5)
// ),
// );},
// )




// Column(children: [
// Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(
// margin: EdgeInsets.only(top: 70),
// height: 30,
// width: 30,
// child: Image.asset("pic/arrow_left.png"),
// ),
//
// //-----------------------------------------------------------------------------------------------------------------
// Container(
// margin: EdgeInsets.only(top: 50),
// height: 250,
// width: 250,
// child: Image.asset("pic/twitter.png"),
// ),
//
// //-----------------------------------------------------------------------------------------------------------------
// Container(
// margin: EdgeInsets.only(top: 70),
// height: 30,
// width: 30,
// child: Image.asset("pic/arrow_right.png"),
// )
// ],),
//
// //-----------------------------------------------------------------------------------------------------------------
//
// Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(
// margin: EdgeInsets.only(left: 10),
// height: 35,
// width: 35,
// child: Image.asset("pic/fb_icon.png"),
// ),
//
// //-----------------------------------------------------------------------------------------------------------------
// Container(
// margin: EdgeInsets.only(right: 10),
// height: 35,
// width: 35,
// child: Image.asset("pic/olympic.png"),
//
// )
// ],),
//
// //-----------------------------------------------------------------------------------------------------------------
//
// //Row(children: [
// //Expanded(child:
// Wrap(
// children: List.generate(ans[cur_level].toString().length,
// (index) => InkWell(
// onTap: () {
//
// if(userans[index] != "")
// {
// option[pos[index]]=userans[index];
// userans[index]="";
// setState(() {
//
// });
// }
// },
// child: Container(
// alignment: Alignment.center ,
// margin: EdgeInsets.all(10),
// height: 50,
// width: 50,
// color: Colors.black87,
// child: Text("${userans[index]}",
// style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
// ),
// )).toList(),
// ),
// //),
// //],),
//
// //-----------------------------------------------------------------------------------------------------------------
//
// Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Container(
// alignment: Alignment. center,
// margin: EdgeInsets.only(left: 15),
// padding: EdgeInsets.only(left: 30),
// height: 150,
// width: 200,
// child: Text("Use hints",style: TextStyle(fontSize: 22,color: Colors.white),),
// //child: Image.asset("pic/hints_clicked.png"),
// decoration: BoxDecoration(
// image: DecorationImage(image: AssetImage("pic/hints_clicked.png"),)
// ),
// ),
//
// //-----------------------------------------------------------------------------------------------------------------
// InkWell(
// onTap: () {
//
// userans = [""];
// setState(() {
//
// });
// },
// child: Container(
// height: 50,
// width: 50,
// child: Image.asset("pic/clear_clicked.png"),
// ),
// ),
//
// //-----------------------------------------------------------------------------------------------------------------
// InkWell(
// onTap: () {
//
// int index=0;
//
// //for(int i=0 ; i < userans.length ; i++)
// //{
//
//
// //}
//
// setState(() {
//
// });
// },
// child: Container(
// margin: EdgeInsets.only(right: 15),
// height: 50,
// width: 50,
// child: Image.asset("pic/back_clicked.png"),
// ),
// )
// ],),
//
// //-----------------------------------------------------------------------------------------------------------------
//
// Expanded(child: Row(children: [
// Expanded(child: GridView.builder(
// itemCount: 14,
// padding: EdgeInsets.only(left: 10,right: 10),
//
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 7,
// mainAxisSpacing: 5,
// crossAxisSpacing: 5),
// itemBuilder: (context, index) {
// return (option[index] != "") ?
// InkWell(
// onTap: () {
//
// for(int i=0 ; i < userans.length ; i++)
// {
// if(userans[i] == "")
// {
// userans[i] = option[index];
// pos[i]=index;
// option[index]="";
// setState(() {
//
// });
// }
// }
// },
// child: Container(
// alignment: Alignment.center,
// height: 30,
// width: 30,
// child: Text("${option[index]}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
//
// decoration: BoxDecoration(
// color: Colors.grey.shade400,
// borderRadius: BorderRadius.circular(5)
// ),
// ),
// ): Text("");
// },))
// ],)
// ),
//
//
// //-----------------------------------------------------------------------------------------------------------------
//
// Expanded(child: Row(children: [
// Expanded(child: Container(
// margin: EdgeInsets.only(top: 10),
// height: 60,
// width: double.infinity,
// color: Colors.black,
// ))
// ],))
//
//
// ],)





















































// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main()
// {
//   runApp(MaterialApp(home: second(),
//     debugShowCheckedModeBanner: false,));
// }
//
// class second extends StatefulWidget {
//   const second({super.key});
//
//   @override
//   State<second> createState() => _secondState();
// }
//
// class _secondState extends State<second> {
//
//   int cur_level=0;
//   List ans=["twitter","nike","mercedes","honda","audi","apple","amazon","adidas","bmw"];
//   List option=[];
//   List pos=[];
//   List userans=[];
//   List a=["a","f","i","e","t","m","x","q","j","c","o","s","l","b","y"];
//
//   List img=["twitter.png","nike.png","mercedes.png","honda.png","audi.png","apple.png","amazon.png","adidas.png",
//     "bmw.png"];
//
//   PageController _pageController= PageController(initialPage: 0);
//
//   @override
//   void initState() {
//
//     option=List.filled(14, "");
//     pos=List.filled(14, "");
//     userans=List.filled(ans[cur_level].toString().length, "");
//
//
//     for(int i=0  ; i < ans[cur_level].toString().length ; i++)
//     {
//
//       option[i]= ans[cur_level].toString()[i];
//       setState(() {
//
//       });
//     }
//
//     for(int i = ans[cur_level].toString().length ; i < 14 ; i++)
//     {
//       //option[i] = a[i] ;
//     }
//     option.shuffle();
//     setState(() {
//
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text("logo 39 / 40"),
//           actions: [
//             PopupMenuItem(child:
//             Container(
//               padding: EdgeInsets.only(left: 5),
//               alignment: Alignment.centerLeft,
//               height: 40,
//               width: 90,
//
//               decoration: BoxDecoration(
//                   image: DecorationImage(image: AssetImage("pic/bulb_mark.png"))
//               ),
//
//               child: Container(
//                 alignment: Alignment.centerRight,
//                 child: Text("hints" "\n131",
//                   style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
//               ),
//
//             )),
//           ],
//         ),
//
//
//
//         body: PageView.builder(
//           controller: _pageController,
//           itemCount: img.length,
//           itemBuilder: (context, index) {
//             return Column(children: [
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//
//                       _pageController?.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
//                       setState(() {
//
//                       });
//                     },
//                     child: Container(
//                       margin: EdgeInsets.only(top: 70),
//                       height: 30,
//                       width: 30,
//                       child: Image.asset("pic/arrow_left.png"),
//                     ),
//                   ),
//
// //-----------------------------------------------------------------------------------------------------------------
//                   Container(
//                     margin: EdgeInsets.only(top: 50),
//                     height: 250,
//                     width: 250,
//                     child: Image.asset("pic/${img[index]}"),
//                   ),
//
// //-----------------------------------------------------------------------------------------------------------------
//                   InkWell(
//                     onTap: () {
//
//                       _pageController?.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
//                       setState(() {
//
//                       });
//                     },
//                     child: Container(
//                       margin: EdgeInsets.only(top: 70),
//                       height: 30,
//                       width: 30,
//                       child: Image.asset("pic/arrow_right.png"),
//                     ),
//                   )
//                 ],),
//
// //-----------------------------------------------------------------------------------------------------------------
//
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
//                     height: 35,
//                     width: 35,
//                     child: Image.asset("pic/fb_icon.png"),
//                   ),
//
// //-----------------------------------------------------------------------------------------------------------------
//                   Container(
//                     margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
//                     height: 35,
//                     width: 35,
//                     child: Image.asset("pic/circle_points_green.png"),
//
//                   )
//                 ],),
//
// //-----------------------------------------------------------------------------------------------------------------
//               //ans[cur_level].toString().length
//               Wrap(children:
//               List.generate(ans[cur_level].toString().length,
//                       (index) => InkWell(
//                     onTap: () {
//
//                       if(userans[index] != "")
//                       {
//                         option[pos[index]]=userans[index];
//                         userans[index]="";
//                         setState(() {
//
//                         });
//                       }
//                     },
//                     child: Container(
//                       alignment: Alignment.center ,
//                       margin: EdgeInsets.all(5),
//                       height: 40,
//                       width: 40,
//                       child: Text("${userans[index]}",
//                         style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
//
//                       decoration: BoxDecoration(
//                           color: Colors.black87,
//                           borderRadius: BorderRadius.circular(7)
//                       ),
//                     ),
//                   )).toList(),
//               ),
//
//
// //-----------------------------------------------------------------------------------------------------------------
//
//               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     alignment: Alignment. center,
//                     margin: EdgeInsets.only(left: 15),
//                     padding: EdgeInsets.only(left: 30),
//                     height: 150,
//                     width: 200,
//                     child: Text("Use hints",style: TextStyle(fontSize: 22,color: Colors.white),),
//                     decoration: BoxDecoration(
//                         image: DecorationImage(image: AssetImage("pic/hints_clicked.png"),)
//                     ),
//                   ),
//
// //-----------------------------------------------------------------------------------------------------------------
//                   InkWell(
//                     onTap: () {
//
//                       userans = " " as List;
//                       setState(() {
//
//                       });
//                     },
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       child: Image.asset("pic/clear_clicked.png"),
//                     ),
//                   ),
//
// //-----------------------------------------------------------------------------------------------------------------
//                   InkWell(
//                     onTap: () {
//                       userans=userans.sublist(0,userans.last-1);
//                       setState(() {
//
//                       });
//                     },
//                     child: Container(
//                       margin: EdgeInsets.only(right: 15),
//                       height: 50,
//                       width: 50,
//                       child: Image.asset("pic/back_clicked.png"),
//                     ),
//                   )
//                 ],),
//
// //-----------------------------------------------------------------------------------------------------------------
//
//               Expanded(child: Row(children: [
//                 Expanded(child: GridView.builder(
//                   itemCount: 14,
//                   padding: EdgeInsets.only(left: 10,right: 10),
//
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 7,
//                       mainAxisSpacing: 5,
//                       crossAxisSpacing: 5),
//                   itemBuilder: (context, index) {
//                     return (option[index]  != "") ?
//                     InkWell(
//                       onTap: () {
//
//                         for(int i=0 ; i < userans.length ; i++)
//                         {
//                           if(userans[i] == "")
//                           {
//                             userans[i] = option[index];
//                             pos[i]=index;
//                             option[index]="";
//                             setState(() {
//
//                             });
//                           }
//                         }
//                       },
//                       child: Container(
//                         alignment: Alignment.center,
//                         height: 30,
//                         width: 30,
//                         child: Text("${option[index]}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
//
//                         decoration: BoxDecoration(
//                             color: Colors.grey.shade400,
//                             borderRadius: BorderRadius.circular(5)
//                         ),
//                       ),
//                     ): Text("");
//                   },))
//               ],)
//               ),
//
//
// //-----------------------------------------------------------------------------------------------------------------
//
//               Expanded(child: Row(children: [
//                 Expanded(child: Container(
//                   margin: EdgeInsets.only(top: 10),
//                   height: 60,
//                   width: double.infinity,
//                   color: Colors.black,
//                 ))
//               ],))
//
//
//             ],);
//           },)
//     );
//   }
// }


// GridView.builder(
// itemCount: 7,
// padding: EdgeInsets.only(left: 35,right: 35,top: 20),
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 7,
// mainAxisSpacing: 4,
// crossAxisSpacing: 4), itemBuilder:  (context, index) {
// return Container(
// height: 5,
// width: 5,
//
// decoration: BoxDecoration(
// color: Colors.black54,
// borderRadius: BorderRadius.circular(5)
// ),
// );},
// )




// Column(children: [
// Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(
// margin: EdgeInsets.only(top: 70),
// height: 30,
// width: 30,
// child: Image.asset("pic/arrow_left.png"),
// ),
//
// //-----------------------------------------------------------------------------------------------------------------
// Container(
// margin: EdgeInsets.only(top: 50),
// height: 250,
// width: 250,
// child: Image.asset("pic/twitter.png"),
// ),
//
// //-----------------------------------------------------------------------------------------------------------------
// Container(
// margin: EdgeInsets.only(top: 70),
// height: 30,
// width: 30,
// child: Image.asset("pic/arrow_right.png"),
// )
// ],),
//
// //-----------------------------------------------------------------------------------------------------------------
//
// Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(
// margin: EdgeInsets.only(left: 10),
// height: 35,
// width: 35,
// child: Image.asset("pic/fb_icon.png"),
// ),
//
// //-----------------------------------------------------------------------------------------------------------------
// Container(
// margin: EdgeInsets.only(right: 10),
// height: 35,
// width: 35,
// child: Image.asset("pic/olympic.png"),
//
// )
// ],),
//
// //-----------------------------------------------------------------------------------------------------------------
//
// //Row(children: [
// //Expanded(child:
// Wrap(
// children: List.generate(ans[cur_level].toString().length,
// (index) => InkWell(
// onTap: () {
//
// if(userans[index] != "")
// {
// option[pos[index]]=userans[index];
// userans[index]="";
// setState(() {
//
// });
// }
// },
// child: Container(
// alignment: Alignment.center ,
// margin: EdgeInsets.all(10),
// height: 50,
// width: 50,
// color: Colors.black87,
// child: Text("${userans[index]}",
// style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
// ),
// )).toList(),
// ),
// //),
// //],),
//
// //-----------------------------------------------------------------------------------------------------------------
//
// Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Container(
// alignment: Alignment. center,
// margin: EdgeInsets.only(left: 15),
// padding: EdgeInsets.only(left: 30),
// height: 150,
// width: 200,
// child: Text("Use hints",style: TextStyle(fontSize: 22,color: Colors.white),),
// //child: Image.asset("pic/hints_clicked.png"),
// decoration: BoxDecoration(
// image: DecorationImage(image: AssetImage("pic/hints_clicked.png"),)
// ),
// ),
//
// //-----------------------------------------------------------------------------------------------------------------
// InkWell(
// onTap: () {
//
// userans = [""];
// setState(() {
//
// });
// },
// child: Container(
// height: 50,
// width: 50,
// child: Image.asset("pic/clear_clicked.png"),
// ),
// ),
//
// //-----------------------------------------------------------------------------------------------------------------
// InkWell(
// onTap: () {
//
// int index=0;
//
// //for(int i=0 ; i < userans.length ; i++)
// //{
//
//
// //}
//
// setState(() {
//
// });
// },
// child: Container(
// margin: EdgeInsets.only(right: 15),
// height: 50,
// width: 50,
// child: Image.asset("pic/back_clicked.png"),
// ),
// )
// ],),
//
// //-----------------------------------------------------------------------------------------------------------------
//
// Expanded(child: Row(children: [
// Expanded(child: GridView.builder(
// itemCount: 14,
// padding: EdgeInsets.only(left: 10,right: 10),
//
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 7,
// mainAxisSpacing: 5,
// crossAxisSpacing: 5),
// itemBuilder: (context, index) {
// return (option[index] != "") ?
// InkWell(
// onTap: () {
//
// for(int i=0 ; i < userans.length ; i++)
// {
// if(userans[i] == "")
// {
// userans[i] = option[index];
// pos[i]=index;
// option[index]="";
// setState(() {
//
// });
// }
// }
// },
// child: Container(
// alignment: Alignment.center,
// height: 30,
// width: 30,
// child: Text("${option[index]}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
//
// decoration: BoxDecoration(
// color: Colors.grey.shade400,
// borderRadius: BorderRadius.circular(5)
// ),
// ),
// ): Text("");
// },))
// ],)
// ),
//
//
// //-----------------------------------------------------------------------------------------------------------------
//
// Expanded(child: Row(children: [
// Expanded(child: Container(
// margin: EdgeInsets.only(top: 10),
// height: 60,
// width: double.infinity,
// color: Colors.black,
// ))
// ],))
//
//
// ],)



