import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Loginpage.dart';
import 'package:vehical_maintenance/Mainpage.dart';


class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}
class _DetailsState extends State<Details> {
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
      appBar: new AppBar(
        title: Stack(
          children: [
            Align(
              alignment: Alignment(-1.2,-0.1),
              child: Text(
                "My Details",
                style: TextStyle(color: Color.fromRGBO(0,0,0,1),
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,),
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: new IconButton(
          icon: SvgPicture.asset('assets/images/back.svg'),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Color.fromRGBO(246, 251, 255,1),
      body: SingleChildScrollView(
        child: Container(
          height: 360,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: <Widget>[
                        Container(
                          // alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.only(left:5.0,top:13),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(242,242,242,1)
                                ),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Swapnil Gupta",
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(51,51,51,1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400),
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Container(
                            padding: EdgeInsets.only(left:5.0,top:13),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(242,242,242,1)
                                ),
                              ),
                            ),

                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "swapnil@servicko.com",
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(51,51,51,1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400),
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                        ),

                        Container(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color.fromRGBO(242,242,242,1)
                                    )
                                )
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "9033273966",
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(189,189,189,1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400),
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                        ),

                       // SizedBox(height:40,width: 345,
                        Container(
                          padding: EdgeInsets.only(top:35),
                          height: 80,
                          width: 345,
                          child: new RaisedButton(
                            color: Color.fromRGBO(0,114,255,1),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                            ),
                            child: new Text("Update",style: TextStyle(
                              color: Color.fromRGBO(255,255,255,1),
                              fontSize:14,fontFamily: 'Mulish',
                              fontWeight: FontWeight.w800,
                            ),
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MainPage()));
                            },
                          ),
                        ),

                      ],
                    ),
                  )
              ),
            ],
          ),
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
      //           icon: SvgPicture.asset('assets/images/seting.svg'),
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
      //           icon: SvgPicture.asset('assets/images/Vectorr.svg'),
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
