import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:touchstone_assignment/UI/Bedroom.dart';

class Homepage extends StatefulWidget {
  static String id='Homepage_Screen';
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

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
      body:Container(
        child: Stack(
          children: [
            SvgPicture.asset("lib/UIAssets/Circles.svg",fit: BoxFit.cover),
            SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 38),
                      child: Text("Control\nPanel",
                      style: TextStyle(
                          fontFamily: "Circular Std Book",
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child:CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage("lib/UIAssets/dummyprofile.jpg"),

                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Hero(
                    tag: "WigeCard",
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF6F8FB),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: Text("All Rooms",
                              style: TextStyle(
                                  fontFamily: "Circular Std Book",
                                color: Color(0xff022444),
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            Expanded(child:
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, Bedroom.id);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal:28.0),
                                child: GridView.count(
                                  mainAxisSpacing: 25,
                                crossAxisCount: 2,
                                crossAxisSpacing: 25,
                                primary: false,
                                  children: [
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      elevation: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom:18.0),
                                              child: SvgPicture.asset("lib/UIAssets/bed.svg",
                                              fit: BoxFit.contain,),
                                            ),
                                            Text("Bed room",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Circular Std Book",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                            ),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:4.0),
                                              child: Text("4 Lights",
                                              style: TextStyle(
                                                color: Colors.orangeAccent,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                              ),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      elevation: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom:18.0),
                                              child: SvgPicture.asset("lib/UIAssets/room.svg",
                                                fit: BoxFit.contain,),
                                            ),
                                            Text("Living room",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Circular Std Book",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                              ),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:4.0),
                                              child: Text("2 Lights",
                                                style: TextStyle(
                                                    color: Colors.orangeAccent,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      elevation: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom:18.0),
                                              child: SvgPicture.asset("lib/UIAssets/kitchen.svg",
                                                fit: BoxFit.contain,),
                                            ),
                                            Text("Kitchen",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Circular Std Book",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                              ),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:4.0),
                                              child: Text("5 Lights",
                                                style: TextStyle(
                                                    color: Colors.orangeAccent,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      elevation: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom:18.0),
                                              child: SvgPicture.asset("lib/UIAssets/bathtube.svg",
                                                fit: BoxFit.contain,),
                                            ),
                                            Text("Bathroom",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Circular Std Book",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                              ),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:4.0),
                                              child: Text("1 Lights",
                                                style: TextStyle(
                                                    color: Colors.orangeAccent,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      elevation: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(17.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom:18.0),
                                              child: SvgPicture.asset("lib/UIAssets/house.svg",
                                                fit: BoxFit.contain,),
                                            ),
                                            Text("Outdoor",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Circular Std Book",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                              ),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:4.0),
                                              child: Text("5 Lights",
                                                style: TextStyle(
                                                    color: Colors.orangeAccent,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      elevation: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom:18.0),
                                              child: SvgPicture.asset("lib/UIAssets/balcony.svg",
                                                fit: BoxFit.contain,),
                                            ),
                                            Text("Balcony",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Circular Std Book",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                              ),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:4.0),
                                              child: Text("2 Lights",
                                                style: TextStyle(
                                                    color: Colors.orangeAccent,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),

                          ],
                        ),
                      ),
                    ),
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
