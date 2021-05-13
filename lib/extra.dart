// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:vehical_maintenance/Account.dart';
// import 'package:vehical_maintenance/Add%20vehicle.dart';
// import 'package:vehical_maintenance/Mainpage.dart';
// import 'package:vehical_maintenance/viewall.dart';
// class Bottom extends StatefulWidget {
//   Bottom({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _BottomState createState() => _BottomState();
// }
//
// class _BottomState extends State<Bottom> {
//   final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
//   int _currentTabIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Navigator(key: _navigatorKey, onGenerateRoute: generateRoute),
//         bottomNavigationBar: _bottomNavigationBar(),
//       ),
//     );
//   }
//
//   Widget _bottomNavigationBar() {
//     return BottomNavigationBar(
//       backgroundColor: Color.fromRGBO(255,255,255,1),
//         currentIndex: _currentTabIndex,
//         onTap: _onTap,
//         selectedItemColor: Colors.blue[800],
//         unselectedItemColor: Color.fromRGBO(189, 189, 189, 1),
//
//
//         type: BottomNavigationBarType.fixed,
//         items: [
//           new BottomNavigationBarItem(
//               icon:  SvgPicture.asset('assets/images/seting.svg'),
//               title: new Text("Service", style: new TextStyle(
//                 color: const Color.fromRGBO(189, 189, 189, 1),
//                 fontSize: 12,
//                 fontFamily: 'Mulish',
//                 fontWeight: FontWeight.w700,))),
//           new BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/images/sos1.svg'),
//               title: new Text("Emergency", style: new TextStyle(
//                 color: const Color.fromRGBO(189, 189, 189, 1),
//                 fontSize: 12,
//                 fontFamily: 'Mulish',
//                 fontWeight: FontWeight.w700,))),
//           new BottomNavigationBarItem(
//               icon:  SvgPicture.asset('assets/images/Frame1.svg'),
//               title: new Text("Vehicles", style: new
//               TextStyle(
//                 color: const Color.fromRGBO(189, 189, 189, 1),
//                 fontSize: 12,
//                 fontFamily: 'Mulish',
//                 fontWeight: FontWeight.w700,),)),
//           new BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/images/account.svg'),
//               title: new Text("Account", style: new
//               TextStyle(
//                 color: const Color.fromRGBO(189, 189, 189, 1),
//                 fontSize: 12,
//                 fontFamily: 'Mulish',
//                 fontWeight: FontWeight.w700),))
//         ]
//
//
//     );
//   }
//
//
//   _onTap(int tabIndex) {
//     switch (tabIndex) {
//       case 0:
//         _navigatorKey.currentState.pushReplacementNamed("MainPage");
//         break;
//       case 1:
//         _navigatorKey.currentState.pushReplacementNamed("Viewall");
//         break;
//       case 2:
//         _navigatorKey.currentState.pushReplacementNamed("addvehicle");
//         break;
//       case 3:
//         _navigatorKey.currentState.pushReplacementNamed("Account");
//         break;
//     }
//
//   }
//
//   Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case "addvehicle":
//         return MaterialPageRoute(builder: (context) => addvehicle());
//       case "Account":
//         return MaterialPageRoute(builder: (context) => Account());
//       case "Viewall":
//         return MaterialPageRoute(builder: (context) => Viewall());
//       default:
//         return MaterialPageRoute(builder: (context) => MainPage());
//
//     }
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Add%20vehicle.dart';
import 'package:vehical_maintenance/viewall.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class Main extends StatefulWidget {
  final String image, title, category;

  const Main({Key key, this.image, this.title, this.category})
      : super(key: key);


  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  Container cars(String image,String heading,String subHeading){
    return Container(
      width: 100,
      child: Wrap(
        children: <Widget>[
          Image.asset(image,height: 100),
          ListTile(title: Text(heading,style: TextStyle(
            color: Color.fromRGBO(33, 33, 33, 1),
            fontSize: 13.5,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
          ),textAlign: TextAlign.left,),
              subtitle: Text(subHeading,style: TextStyle(
                color: Color.fromRGBO(130, 130, 130, 1),
                fontSize: 11,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
              ),)),
        ],
      ),

    );
  }
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children:[
            Container(
              width: 150,
              // color:Colors.blue,
              alignment:Alignment(-1.0,-0.5),
              child: SvgPicture.asset('assets/images/blue.svg'),
            ),
            Container(
              alignment: Alignment(-0.83,-0.8),
              child:Text("Navrangpura",
                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                ) ,
              ),
            ),
            Container(
              alignment:Alignment(1.07,-0.10),
              child:SvgPicture.asset('assets/images/Group75.svg'),
            ),
          ],
        ),
        actions: <Widget>[
          new Container(
            child: Align(
              child: Text('Ciaz',
                style: new TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(33,33,33,1),
                ),
              ),
            ),

            padding: EdgeInsets.only(left:0.0,right:19.0),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.40,
      ),
      backgroundColor: Color.fromRGBO(246,251,255,1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 435,
              width: 500,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom:20.0),
                    child: Container(
                      width:500,
                      alignment: Alignment(-0.75,0.6),
                      child: Text("Top Service Categories",
                        style: TextStyle(
                          color: Color.fromRGBO(33, 33, 33, 1),
                          fontSize: 18,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),

                  // SizedBox(height:10),
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: <Widget>[
                  //       Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child:Image.asset('assets/images/frame7.png',height:80,),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child:Image.asset('assets/images/Frame8.png',height:80,),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child:Image.asset('assets/images/Frame9.png',height:80),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child:Image.asset('assets/images/Frame10.png',height:80),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child:Image.asset('assets/images/frame7.png',height:80),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child:Image.asset('assets/images/Frame8.png',height:80),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(10.0),
                  //         child:Image.asset('assets/images/Frame9.png',fit: BoxFit.contain,height:80,),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child:Image.asset('assets/images/Frame10.png',height:80),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset(widget.image,fit: BoxFit.contain),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Viewall()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 5,
                          offset: Offset(0, 2)
                      )
                    ]
                ),
                child: Container(
                  width: 500,
                  height: 180,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment(-0.87,-0.76),
                        child:Text("Car services",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 18,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ) ,
                        ),
                      ),
                      Stack(
                          children:[
                            Align(
                              child: Text('View All',
                                style: new TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(130,130,130,1),
                                ),
                              ),
                              alignment: Alignment(0.73,-0.72),
                            ),
                            IconButton(
                              // height: 25,
                              //alignment:Alignment(0.8,-0.7),
                              padding: EdgeInsets.only(left:365.0,top: 13),
                              icon:SvgPicture.asset('assets/images/arrow.svg'),
                              onPressed: (){

                              },
                            ),
                            Container(
                              alignment:Alignment(-0.90,-0.15),
                              child:SvgPicture.asset('assets/images/car-repair.svg'),
                            ),
                            Container(
                              alignment: Alignment(-0.60,-0.14),
                              child:Text("General Service",
                                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,
                              ),
                            ),
                            Container(
                              alignment:Alignment(0.15,-0.15),
                              child:SvgPicture.asset('assets/images/wash.svg'),
                            ),
                            Container(
                              alignment: Alignment(0.50,-0.11),
                              child:Text("Car Wash",
                                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,
                              ),
                            ),
                            Container(
                              alignment:Alignment(-0.90,0.50),
                              child:SvgPicture.asset('assets/images/spa.svg'),
                            ),
                            Container(
                              alignment: Alignment(-0.66,0.50),
                              child:Text("Car Spa",
                                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,
                              ),
                            ),
                            Container(
                              alignment:Alignment(0.15,0.5),
                              child:SvgPicture.asset('assets/images/battery.svg'),
                            ),
                            Container(
                              alignment: Alignment(0.63,0.5),
                              child:Text("Battery Issues",
                                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,
                              ),
                            ),
                          ]
                      ),

                    ],
                  ),

                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        blurRadius: 5,
                        offset: Offset(0, 2)
                    )
                  ]
              ),
              child: Container(
                width: 500,
                height: 180,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Viewall()));
                  },
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment(-0.81,-0.76),
                        child:Text("Motorcycle services",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 18,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ) ,
                        ),
                      ),
                      Stack(
                          children:[
                            Align(
                              child: Text('View All',
                                style: new TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(130,130,130,1),
                                ),
                              ),
                              alignment: Alignment(0.73,-0.72),
                            ),
                            IconButton(
                              color: Colors.red,
                              // height: 25,
                              //alignment:Alignment(0.8,-0.7),
                              padding: EdgeInsets.only(left:365.0,top: 13),
                              icon:SvgPicture.asset('assets/images/arrow.svg'),
                              onPressed: (){

                              },
                            ),
                            Container(
                              alignment:Alignment(-0.90,-0.15),
                              child:SvgPicture.asset('assets/images/repair1.svg'),
                            ),
                            Container(
                              alignment: Alignment(-0.60,-0.14),
                              child:Text("General Service",
                                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,
                              ),
                            ),
                            Container(
                              alignment:Alignment(0.15,-0.15),
                              child:SvgPicture.asset('assets/images/wash.svg'),
                            ),
                            Container(
                              alignment: Alignment(0.50,-0.11),
                              child:Text("Car Wash",
                                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,
                              ),
                            ),
                            Container(
                              alignment:Alignment(-0.90,0.50),
                              child:SvgPicture.asset('assets/images/spa.svg'),
                            ),
                            Container(
                              alignment: Alignment(-0.66,0.50),
                              child:Text("Car Spa",
                                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,
                              ),
                            ),
                            Container(
                              alignment:Alignment(0.15,0.5),
                              child:SvgPicture.asset('assets/images/battery.svg'),
                            ),
                            Container(
                              alignment: Alignment(0.63,0.5),
                              child:Text("Battery Issues",
                                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,
                              ),
                            ),
                          ]
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        blurRadius: 5,
                        offset: Offset(0, 2)
                    )
                  ]
              ),
              child: Container(
                width: 500,
                height: 180,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment(-0.79,-0.76),
                      child:Text("Refer Servicko and Earn",
                        style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 18,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),
                    ),
                    Stack(
                        children:[
                          IconButton(
                            // height: 25,
                            //alignment:Alignment(0.8,-0.7),
                            padding: EdgeInsets.only(left:350.0,top: 13),
                            icon:SvgPicture.asset('assets/images/arrow.svg'),
                            onPressed: (){},
                          ),

                        ]
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //       color: Colors.grey,
      //       boxShadow: [
      //         BoxShadow(
      //             color: Colors.grey
      //         )
      //       ]
      //   ),
      //   child: SizedBox(
      //     height: 65,
      //     child: BottomNavigationBar(
      //       backgroundColor: Color.fromRGBO(255,255,255,1),
      //       type: BottomNavigationBarType.fixed,
      //       items: <BottomNavigationBarItem>[
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/set.svg'),
      //           label: 'Service',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/sos1.svg'),
      //           label: 'Emergency',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Container(
      //               height: 25,
      //               child: SvgPicture.asset('assets/images/Frame1.svg')),
      //           label: 'Vehicles',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/account.svg'),
      //           label: 'Account',
      //         ),
      //
      //       ],
      //       currentIndex: _selectedIndex,
      //       selectedItemColor: Colors.blue[800],
      //       onTap: _onItemTapped,
      //       elevation: 4,
      //
      //     ),
      //   ),
      // ),

    );
  }
}

