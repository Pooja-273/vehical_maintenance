import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Account.dart';
import 'package:vehical_maintenance/Order.dart';
import 'package:vehical_maintenance/cardetail.dart';

class Viewall extends StatefulWidget {
  @override
  _ViewallState createState() => _ViewallState();
}

class _ViewallState extends State<Viewall> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[

  ];

  void _onItemTapped(int index) {
    if(index==0){
      Account();
    }
    else if(index==1)
      {
        Order();
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Stack(
          children:[
            Align(
              alignment:Alignment(1.07,-0.1),
              child:SvgPicture.asset('assets/images/Group75.svg'),
            ),
          ],
        ),
        actions: <Widget>[
          new Container(
            child: Stack(
                children:[
                  Align(
                    // alignment:Alignment(0.0,0.0),
                    child: Text('Ciaz',
                      // textAlign: TextAlign.left,
                      style: new TextStyle(
                        //height:2.6,
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(33,33,33,1),
                      ),
                    ),
                  ),
                ]
            ),
            padding: EdgeInsets.only(left:0.0,right:19.0),
          )
        ],
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
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              height: 63,
              child:Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:3.0),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      width: 500,
                      height: 53,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:<Widget> [
                          Container(
                            alignment: Alignment(-0.9,0.2),
                            child: Wrap(
                              children: <Widget>[
                                SvgPicture.asset('assets/images/repair.svg'),
                              ],
                            ),
                          ),
                          Container(
                            width: 140,
                            alignment: Alignment(-0.7,0.2),
                            child: Wrap(
                              children: <Widget>[
                                Text("General Service",
                                  style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                    fontSize: 12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                  ) ,),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.8,0.2),
                            child: Wrap(
                              children: <Widget>[
                                SvgPicture.asset('assets/images/car-wash.svg'),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            alignment: Alignment(-0.7,0.28),
                            child: Wrap(
                              children: <Widget>[
                                Text("Car Wash",
                                  style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                                    fontSize: 12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                  ) ,),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.8,0.2),
                            child: Wrap(
                              children: <Widget>[
                                SvgPicture.asset('assets/images/spa.svg'),

                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            alignment: Alignment(-0.8,0.28),
                            child: Wrap(
                              children: <Widget>[
                                Text("Car Spa",
                                  style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                                    fontSize: 12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                  ) ,),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.8,0.2),
                            child: Wrap(
                              children: <Widget>[
                                SvgPicture.asset('assets/images/battery.svg'),
                              ],
                            ),
                          ),
                          Container(
                            width: 120,
                            alignment: Alignment(-0.7,0.28),
                            child: Wrap(
                              children: <Widget>[
                                Text("Battery Issues",
                                  style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                                    fontSize: 12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                  ) ,),
                              ],
                            ),
                          ),
                        ],
                      )

                  ),
                ),
              ],
              ),
            ),
            SizedBox(height:10),
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
                height: 220,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        // alignment: Alignment.topLeft,
                        child: Container(
                          height: 40,
                          padding: EdgeInsets.only(left:5.0,top:1),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(242,242,242,1)
                              ),
                            ),
                          ),
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search,color: Color.fromRGBO(189,189,189,1),size: 20,),
                                hintText: "Search ",
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(189,189,189,1),
                                    fontSize:14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600),
                                border: InputBorder.none
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // height: 700,
                      alignment: Alignment(-0.80,-0.2),
                      child:Text("Available Service Centers",
                        style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CarDetail()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment(-0.9,0.9),
                                image:AssetImage('assets/images/Frame7.png',
                                ),
                              ),

                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.15,0.2),
                            child:Text("Universal Honda",
                              style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(0.25,0.2),
                            child:SvgPicture.asset('assets/images/Vector.svg'),

                          ),
                          Container(
                            alignment: Alignment(0.36,0.2),
                            child:SvgPicture.asset('assets/images/flat.svg'),

                          ),
                          Stack(
                              children:[
                                Padding(
                                  padding: const EdgeInsets.only(left:325.0,top:106),
                                  child: IconButton(
                                    icon:SvgPicture.asset('assets/images/star.svg'),
                                    onPressed: (){
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) => _buildPopupDialog(context),
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  child: Text("4.5",
                                    style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                                      fontSize: 14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                    ) ,
                                  ),
                                  alignment: Alignment(0.85,0.22),
                                ),

                              ]
                          ),
                          Container(
                            //height:80,
                            alignment: Alignment(-0.36,0.40),
                            child:SvgPicture.asset('assets/images/location.svg'),
                          ),
                          Container(
                            alignment: Alignment(-0.22,0.41),
                            child: Text("Paldi",
                              style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            child: Text("Pick up & Drop Off",
                              style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                                fontSize: 10,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                              ) ,
                            ),
                            alignment:Alignment(-0.20,0.7),
                          ),
                          Container(
                            child: Text("₹149",
                              style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                            alignment:Alignment(-0.31,0.90),
                          ),
                          Container(
                            child: Text("Managed By",
                              style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                                fontSize: 10,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                              ) ,
                            ),
                            alignment:Alignment(0.39,0.7),
                          ),
                          Container(
                            child: Text("Universal Honda",
                              style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                            alignment:Alignment(0.56,0.89),
                          ),
                          Container(
                            child: Text("Reviews",
                              style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                fontSize: 11,
                                decoration: TextDecoration.underline,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                            alignment:Alignment(0.90,0.45),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 0,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        blurRadius: 5,
                        offset: Offset(0,2)
                    )
                  ]
              ),
              child: Container(
                width: 500,
                height: 150,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment(-0.9,0.20),
                          image:AssetImage('assets/images/Frame7.png',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment(-0.15,-0.5),
                      child:Text("Innovative Honda",
                        style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(0.26,-0.5),
                      child:SvgPicture.asset('assets/images/Vector.svg'),

                    ),
                    Container(
                      alignment: Alignment(0.36,-0.5),
                      child:SvgPicture.asset('assets/images/flat.svg'),

                    ),
                    Container(
                      alignment: Alignment(0.72,-0.5),
                      child:SvgPicture.asset('assets/images/star.svg'),
                            ),
                    Container(
                            child: Text("4.5",
                              style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                            alignment: Alignment(0.85,-0.50),
                          ),
                    Container(
                      //height:80,
                      alignment: Alignment(-0.36,-0.16),
                      child:SvgPicture.asset('assets/images/location.svg'),
                    ),
                    Container(
                      alignment: Alignment(-0.13,-0.17),
                      child: Text("Ambawadi",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                    Container(
                      child: Text("Pick up & Drop Off",
                        style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                          fontSize: 10,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ) ,
                      ),
                      alignment:Alignment(-0.18,0.4),
                    ),
                    Container(
                      child: Text("₹149",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                      alignment:Alignment(-0.31,0.74),
                    ),
                    Container(
                      child: Text("Managed By",
                        style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                          fontSize: 10,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ) ,
                      ),
                      alignment:Alignment(0.40,0.4),
                    ),
                    Container(
                      child: Text("Innovative Honda",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                      alignment:Alignment(0.59,0.72),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        blurRadius: 5,
                        offset: Offset(0,2)
                    )
                  ]
              ),
              child: Container(
                width: 500,
                height: 140,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment(-0.90,0.10),
                          image:AssetImage('assets/images/Frame6.png',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment(-0.15,-0.5),
                      child:Text("Bike Care Auto",
                        style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(0.23,-0.5),
                      child:SvgPicture.asset('assets/images/fatting.svg'),
                    ),
                    Container(
                      height:80,
                      alignment: Alignment(0.72,-0.1),
                      child:SvgPicture.asset('assets/images/star.svg'),
                    ),
                    Container(
                      alignment: Alignment(0.85,-0.53),
                      child: Text("4.5",
                        style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),
                    ),
                    Container(
                      //height:80,
                      alignment: Alignment(-0.36,-0.16),
                      child:SvgPicture.asset('assets/images/location.svg'),

                    ),
                    Container(
                      alignment: Alignment(-0.18,-0.17),
                      child: Text("Satellite",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                    Container(
                      child: Text("Pick up & Drop Off",
                        style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                          fontSize: 10,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ) ,
                      ),
                      alignment:Alignment(-0.18,0.4),
                    ),
                    Container(
                      child: Text("₹149",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                      alignment:Alignment(-0.31,0.74),
                    ),
                    Container(
                      child: Text("Managed By",
                        style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                          fontSize: 10,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ) ,
                      ),
                      alignment:Alignment(0.40,0.4),
                    ),
                    Container(
                      child: Text("Servicko",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                      alignment:Alignment(0.36,0.72),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
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
      //           icon: Container(
      //               height: 25,
      //               child: SvgPicture.asset('assets/images/account.svg')),
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

Widget _buildPopupDialog(BuildContext context) {
  return Dialog(
    backgroundColor: Colors.transparent,
    insetPadding: EdgeInsets.all(10),
    child: Stack(overflow: Overflow.visible,
      //alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 345,
          height: 580,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(246, 251, 255, 1)),
          child: Column(
            children: <Widget>[
              Container(
                width: 345,
                height: 120,
                decoration: BoxDecoration(borderRadius: BorderRadius.only(
                    topRight:Radius.circular(15),topLeft: Radius.circular(15)),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right:285),
                      child: IconButton(
                        icon: SvgPicture.asset('assets/images/back.svg'),
                        onPressed: ()=> Navigator.of(context).pop(),
                      ),
                    ),
                    Container(
                      width: 500,
                      height: 70,
                      child: Stack(
                        children: [
                          Container(
                            height: 68,
                            width:85,
                            // color: Colors.red,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment(-0.93,0.8),
                                image: AssetImage('assets/images/image2.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // height: 700,
                            alignment: Alignment(-0.28, -0.70),
                            child: Text("Universal Honda",
                              style: TextStyle(
                                color: Color.fromRGBO(33, 33, 33, 1),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment(0.30, -0.60),
                            child: SvgPicture.asset('assets/images/Vector.svg'),
                          ),
                          Container(
                            alignment: Alignment(0.41, -0.60),
                            child: SvgPicture.asset('assets/images/flat.svg'),
                          ),
                          Container(
                            //height:80,
                            alignment: Alignment(-0.54, 0.29),
                            child: SvgPicture.asset('assets/images/location.svg'),
                          ),
                          Container(
                            alignment: Alignment(-0.40, 0.35),
                            child: Text("Paldi",
                              style: TextStyle(
                                color: Color.fromRGBO(130, 130, 130, 1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            // color: Colors.red,
                            alignment: Alignment(0.71,-0.5),
                            child:SvgPicture.asset('assets/images/star.svg'),
                          ),
                          Container(
                            alignment: Alignment(0.86,-0.48),
                            child: Text("4.5",
                              style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.only(
                    bottomRight:Radius.circular(15),bottomLeft: Radius.circular(15)),
                    color: Colors.white),
                child:Container(
                  width: 500,
                  height: 450,
                  child: SingleChildScrollView(
                    child:Column(
                      children: [
                        SizedBox(
                          height: 700,
                          child: Column(children: <Widget>[
                            Container(
                              // color: Colors.red,
                              width: 500,
                              height: 500,
                              child: Stack(
                                children: [
                                  Container(
                                    alignment: Alignment(-0.89,-0.9),
                                    child:Text("33 Reviews",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,-0.74),
                                    child:Text("Sagar Chauhan",
                                      style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.89,-0.65),
                                    child:Text("Honda Activa",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    child:SvgPicture.asset('assets/images/Starr.svg'),
                                    alignment: Alignment(0.82,-0.72),
                                  ),
                                  Container(
                                    alignment: Alignment(0.90,-0.73),
                                    child: Text("4",
                                      style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.80,-0.55),
                                    child:Text("Good service by Universal Honda.",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,-0.40),
                                    child:Text("Furqaan Mirza",
                                      style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.89,-0.32),
                                    child:Text("Honda Activa",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    child:SvgPicture.asset('assets/images/Starr.svg'),
                                    alignment: Alignment(0.82,-0.38),
                                  ),
                                  Container(
                                    alignment: Alignment(0.90,-0.38),
                                    child: Text("5",
                                      style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.89,-0.22),
                                    child:Text("Great service!",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,-0.07),
                                    child:Text("Swapnil Gupta",
                                      style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,0.02),
                                    child:Text("Honda Activa",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    child:SvgPicture.asset('assets/images/orange.svg'),
                                    alignment: Alignment(0.82,-0.07),
                                  ),
                                  Container(
                                    alignment: Alignment(0.90,-0.07),
                                    child: Text("3",
                                      style: TextStyle(color: Color.fromRGBO(242, 153, 74, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,0.12),
                                    child:Text("Average experience.",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,0.28),
                                    child:Text("Dharmesh Thakor",
                                      style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.89,0.36),
                                    child:Text("Honda Activa",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    child:SvgPicture.asset('assets/images/red.svg'),
                                    alignment: Alignment(0.82,0.28),
                                  ),
                                  Container(
                                    alignment: Alignment(0.90,0.28),
                                    child: Text("1",
                                      style: TextStyle(color: Color.fromRGBO(235, 87, 87, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.82,0.46),
                                    child:Text("Ridiculous behavior by the staff",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,0.60),
                                    child:Text("Sagar Chauhan",
                                      style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.89,0.68),
                                    child:Text("Honda Activa",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    child:SvgPicture.asset('assets/images/Starr.svg'),
                                    alignment: Alignment(0.82,0.61),
                                  ),
                                  Container(
                                    alignment: Alignment(0.90,0.62),
                                    child: Text("4",
                                      style: TextStyle(color: Color.fromRGBO(33, 150, 83, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.82,0.78),
                                    child:Text("Good service by Universal Honda.",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,0.93),
                                    child:Text("Furqaan Mirza",
                                      style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,1.0),
                                    child:Text("Honda Activa",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    child:SvgPicture.asset('assets/images/Starr.svg'),
                                    alignment: Alignment(0.82,0.93),
                                  ),
                                  Container(
                                    alignment: Alignment(0.90,0.95),
                                    child: Text("5",
                                      style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.89,1.11),
                                    child:Text("Great service!",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,1.26),
                                    child:Text("Swapnil Gupta",
                                      style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,1.33),
                                    child:Text("Honda Activa",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    child:SvgPicture.asset('assets/images/orange.svg'),
                                    alignment: Alignment(0.82,1.26),
                                  ),
                                  Container(
                                    alignment: Alignment(0.90,1.28),
                                    child: Text("3",
                                      style: TextStyle(color: Color.fromRGBO(242, 153, 74, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,1.43),
                                    child:Text("Great service!",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.86,1.58),
                                    child:Text("Dharmesh Thakor",
                                      style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.88,1.65),
                                    child:Text("Honda Activa",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    child:SvgPicture.asset('assets/images/red.svg'),
                                    alignment: Alignment(0.82,1.58),
                                  ),
                                  Container(
                                    alignment: Alignment(0.90,1.60),
                                    child: Text("1",
                                      style: TextStyle(color: Color.fromRGBO(235, 87, 87, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.82,1.76),
                                    child:Text("Ridiculous behavior by the staff",
                                      style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ) ,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ),
            ],
          ),
        ),

      ],
    ),


  );
}

