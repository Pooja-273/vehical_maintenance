import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Mainpage.dart';

class Refer extends StatefulWidget {
  @override
  _ReferState createState() => _ReferState();
}

class _ReferState extends State<Refer> {
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
              alignment: Alignment(-1.0,-0.1),
              child: Text(
                "Refer and Earn",
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
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 320,
            child: Center(
              child:Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:50),
                  child:SvgPicture.asset('assets/images/Group191.svg'),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top:40),
                    child: Text('This is your unique Referral Code. Share this code\n with your friends. For every order they place, they’ll\n get ₹50 OFF and you will receive ₹50 in your wallet',
                      style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:35),
                  height: 80,
                  width: 345,
                  child: new RaisedButton.icon(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MainPage()));
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                    ),
                    color: Color.fromRGBO(0,114,255,1),
                    label: Text('Share Now',style: TextStyle(
                        color: Color.fromRGBO(255,255,255,1),
                        fontSize:14,fontFamily: 'Mulish',
                        fontWeight: FontWeight.w800
                    ),),
                    icon: Icon(Icons.share,color: Colors.white,),
                  ),
                )
              ],
              ),
            ),

          ),
          SizedBox(height: 10),
            Container(
              height: 180,
              width: 500,
              color: Colors.white,
              child: Column(
                children:<Widget>[
                  Padding(
                      padding: EdgeInsets.only(right:250,bottom:30,top:20),
                    child: Text('Wallet Balance',
                      style: TextStyle(
                        fontSize:14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                        color:Color.fromRGBO(51,51,51,1),
                      ),),
                  ),
                  Container(
                    alignment: Alignment(-0.85,-0.5),
                    child: SvgPicture.asset('assets/images/Group193.svg'),),
                  Container(
                    height:40,
                    width: 280,
                    alignment: Alignment(-1.0,-3.0),
                    child: Text('₹50',style: TextStyle(
                      fontSize:16,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                    ),),
                        //alignment: Alignment(-0.85,-10.0),
                    ),
                  Column(
                    children: [
                      Padding(
                        padding:EdgeInsets.only(bottom:2,right:19) ,
                        child: Text("You can use this balance while placing an order.",
                            style: TextStyle(
                                fontSize:14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                                color:Color.fromRGBO(130,130,130,1)
                            ),),
                      ),
                    ],
                  )

                ],
              ),
            ),
        ],
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
      //             height: 25,
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
