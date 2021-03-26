import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:touchstone_assignment/Utils/MyArc.dart';
class Bedroom extends StatefulWidget {
  static String id='Bedroom_Screen';
  @override
  _BedroomState createState() => _BedroomState();
}

class _BedroomState extends State<Bedroom> {
  List<String> buttonset=["Main Light","Desk lights","Bed Light"];
  List<String> icon_ad=["lib/UIAssets/surface1.svg","lib/UIAssets/furniture-and-household.svg","lib/UIAssets/bed (1).svg"];
  List<Color> color_panel=[Color(0xffFF9B9B),Color(0xff94EB9E),Color(0xff94CAEB),Color(0xffA594EB),Color(0xffDE94EB),Color(0xffEBD094),Colors.white];
  double intensity=255;
  Color arccolor=Colors.orangeAccent;
  @override
  Widget build(BuildContext context) {
    double maxwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xff0A4DA2),
      bottomNavigationBar: Material(
        elevation: 10,
        child: Container(
          color: Colors.white,
          width: maxwidth,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:45.0,vertical: 5),
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Colors.white,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem( icon: SvgPicture.asset("lib/UIAssets/bulb.svg"), title: Text("Home"),
                ),
                BottomNavigationBarItem( icon: SvgPicture.asset("lib/UIAssets/Icon feather-home.svg"), title: Text("Home"),
                ),
                BottomNavigationBarItem( icon: SvgPicture.asset("lib/UIAssets/Icon feather-settings.svg"), title: Text("Home"),
                ),

              ],

            ),
          ),
        ),
      ),
      body: Container(
        width: maxwidth,
        child: Stack(
          children: [
            SvgPicture.asset("lib/UIAssets/Circles.svg",fit: BoxFit.cover),
            Positioned(
              right:30 ,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                    children: [SvgPicture.asset("lib/UIAssets/light bulb.svg",),
                      Positioned(
                          bottom: 22,
                          child: RotatedBox(quarterTurns: 2,
                              child: MyArc(diameter: 26,color:Colors.black,alpha:255,))
                      ),
                      Positioned(
                        bottom: 22,
                        child: RotatedBox(quarterTurns: 2,
                        child: MyArc(diameter: 26,color:arccolor,alpha: intensity.toInt(),))
                      ),

                ]),),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:36.0,left:16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize:MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back_rounded,color: Colors.white,size: 35,), onPressed: () {
                                Navigator.pop(context);
                                },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0),
                              child: Text("Bed",
                              style: TextStyle(
                                fontFamily: "Circular Std Book",
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("Room",
                            style: TextStyle(
                                fontFamily: "Circular Std Book",
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0,top: 12),
                          child: Text("4 Lights",
                            style: TextStyle(
                                fontFamily: "Circular Std Book",
                                color: Color(0xffFFD239),
                                fontSize: 23,
                                fontWeight: FontWeight.bold
                            ),),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 55,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:3,
                        itemBuilder: (context,itemIndex){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:12.0),
                            child: RaisedButton(
                              child: Container(
                                width: 110,
                                height: 35,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(icon_ad[itemIndex],color: Color(0xff002D67),),
                                    SizedBox(width: 6,),
                                    Text(buttonset[itemIndex],style: TextStyle(
                                        fontFamily: 'Circular Std Book',
                                        fontSize: 16,
                                        color: Color(0xff002D67),
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              onPressed: () async{
                              },

                            ),
                          );
                    }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Stack(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(top:18.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffF6F8FB),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.0),
                                topLeft: Radius.circular(40.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top:30.0,right: 30,left:30),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Text("Intensity",
                                      style: TextStyle(
                                          fontFamily: "Circular Std Book",
                                          color: Color(0xff022444),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset("lib/UIAssets/solution2.svg",height: 35,),
                                        Expanded(
                                          child: CupertinoSlider(
                                            value: intensity,
                                            min:50,
                                            max:255,
                                            activeColor: Color(0xffFFD339),
                                            onChanged: (double value) {
                                              setState(() {
                                                intensity = value;
                                              });
                                            },
                                          ),
                                        ),
                                        SvgPicture.asset("lib/UIAssets/solution1.svg",height: 35,color: Color(0xffFFD239),),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text("Colors",
                                      style: TextStyle(
                                          fontFamily: "Circular Std Book",
                                          color: Color(0xff022444),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 50,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount:color_panel.length,
                                          itemBuilder: (context,itemIndex){
                                            if(itemIndex < 6){
                                              return GestureDetector(
                                                onTap: (){
                                                  print(itemIndex);
                                                  setState(() {
                                                    arccolor=color_panel[itemIndex];
                                                  });

                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right:18.0),
                                                  child: CircleAvatar(
                                                    radius: 15,
                                                    backgroundColor: color_panel[itemIndex],
                                                  ),
                                                ),
                                              );
                                            }
                                              return Padding(
                                                padding: const EdgeInsets.only(right:18.0),
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: SvgPicture.asset("lib/UIAssets/+.svg"),
                                                ),
                                              );
                                          }),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text("Scenes",
                                      style: TextStyle(
                                          fontFamily: "Circular Std Book",
                                          color: Color(0xff022444),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height:58,
                                          width: maxwidth/2.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            gradient: LinearGradient(
                                              colors: <Color>[
                                                Color(0xFFFF9B9B),
                                                Color(0xffFFBC91)

                                              ],
                                            ),
                                          ),
                                          child:Center(
                                              child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SvgPicture.asset("lib/UIAssets/surface1.svg",height:25,color: Colors.white,),
                                              Text("Birthday",
                                              style: TextStyle(
                                                  fontFamily: "Circular Std Book",
                                                  color: Colors.white,
                                                  fontSize: 16,

                                              ),),
                                            ],
                                          )) ,
                                        ),
                                        Container(
                                          height:58,
                                          width: maxwidth/2.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            gradient: LinearGradient(
                                              colors: <Color>[
                                                Color(0xffA693EB),
                                                Color(0xffDA93EB)

                                              ],
                                            ),
                                          ),
                                          child:Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
                                                children: [
                                                  SvgPicture.asset("lib/UIAssets/surface1.svg",height:25,color: Colors.white,),
                                                  Text("Party      ",
                                                    style: TextStyle(
                                                      fontFamily: "Circular Std Book",
                                                      color: Colors.white,
                                                      fontSize: 16,

                                                    ),),
                                                ],
                                              )) ,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height:58,
                                          width: maxwidth/2.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            gradient: LinearGradient(
                                              colors: <Color>[
                                                Color(0xff93CAEB),
                                                Color(0xff93DDEB)

                                              ],
                                            ),
                                          ),
                                          child:Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  SvgPicture.asset("lib/UIAssets/surface1.svg",height:25,color: Colors.white,),
                                                  Text("Relax   ",
                                                    style: TextStyle(
                                                      fontFamily: "Circular Std Book",
                                                      color: Colors.white,
                                                      fontSize: 16,

                                                    ),),
                                                ],
                                              )) ,
                                        ),
                                        Container(
                                          height:58,
                                          width: maxwidth/2.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            gradient: LinearGradient(
                                              colors: <Color>[
                                                Color(0xff89DD94),
                                                Color(0xffBFEC92)

                                              ],
                                            ),
                                          ),
                                          child:Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  SvgPicture.asset("lib/UIAssets/surface1.svg",height:25,color: Colors.white,),
                                                  Text("Fun       ",
                                                    style: TextStyle(
                                                      fontFamily: "Circular Std Book",
                                                      color: Colors.white,
                                                      fontSize: 16,

                                                    ),),
                                                ],
                                              )) ,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right:20,
                            child: Card(
                              elevation: 5.0,
                              shape: CircleBorder(),
                              clipBehavior: Clip.antiAlias,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                  child: SvgPicture.asset("lib/UIAssets/Icon awesome-power-off.svg",fit: BoxFit.contain,height: 25,)),
                            )),

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
