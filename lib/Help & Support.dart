import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Help%20&%20Support.dart';

class Help extends StatefulWidget {

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: addvehicle',
      style: optionStyle,
    ),
    Text(
      'Index 3: Account',
      style: optionStyle,
    ),
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
              alignment: Alignment(-1.18,-0.1),
              child: Text(
                "Help & Support",
                style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,),
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: new IconButton(
          icon: SvgPicture.asset('assets/images/back.svg'),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),

      backgroundColor: Color.fromRGBO(246,251,255,1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 190,
              child: Center(
                child:Column(children: <Widget>[
                  Container(
                    height: 50,
                    //  color: Colors.red,
                    alignment: Alignment(-0.8,0.8),
                    child: Text('Frequently Asked Questions',
                      style: TextStyle(
                        color: Color.fromRGBO(130,130,130,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:240,top:48),
                    child: Text("What is Servicko?",
                      style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:10,top:20),
                    child: Text("Servicko is a vehicle servicing app that allows users\nto book"
                        "services for their vehicles.",
                      style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
                ),
              ),
            ),SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        blurRadius: 5,
                        offset: Offset(0, 2)
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:5.1),
                child: Column(
                  children: <Widget>[
                    //SizedBox(height:20.0),
                    ExpansionTile(
                      title: Text(
                        "Who services my vehicle?",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'data',style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                          ),
                        ),
                        ListTile(
                          title: Text(
                              'data'
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              // height: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        blurRadius: 5,
                        offset: Offset(0, 2)
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:5.0),
                child: Column(
                  children: <Widget>[
                    //SizedBox(height:20.0),
                    ExpansionTile(
                      title: Text(
                        "Reach out to us",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 48.0),
                          child: ListTile(
                            title: TextField(
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color:Color.fromRGBO(242, 242, 242, 1))),
                                hintText: "Subject",
                                hintStyle: TextStyle(color: Color.fromRGBO(189, 189, 189, 1),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w400,
                                ) ,
                                //border: InputBorder.none
                              ),

                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 48.0),
                          child: ListTile(
                            title: TextField(
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color:Color.fromRGBO(242, 242, 242, 1))),
                                hintText: "Message",
                                hintStyle: TextStyle(color: Color.fromRGBO(189, 189, 189, 1),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w400,
                                ) ,

                              ),

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: Center(
                            child: Container(
                              //margin: EdgeInsets.only(top:90.0),
                              height: 40,
                              width: 345,
                              child :RaisedButton(
                                child: Text("Submit",
                                  style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                                    fontSize: 14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w800,
                                  ) ,),
                                //elevation: 6.0,
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => Help()));
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),),
                                color: Color.fromRGBO(0,114,255,1),

                              ),
                            ),
                          ),
                        ),
                      ],
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
      //           icon: Container(
      //               height: 25,
      //               child: SvgPicture.asset('assets/images/Vectorr.svg')),
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