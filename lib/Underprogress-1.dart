import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:vehical_maintenance/Confirmed%20order.dart';
import 'package:vehical_maintenance/Track%20Location.dart';
import 'package:vehical_maintenance/Underprogress.dart';

class underProgress extends StatefulWidget {
  @override
  _underProgressState createState() => _underProgressState();
}

class _underProgressState extends State<underProgress> {
  int current_step = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Stack(
          children:[
            Container(
              alignment: Alignment(-1.30,-0.1),
              child:Text("OD4583215497666",
                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                ) ,
              ),
            ),
            Container(
              height: 25,
              alignment:Alignment(1.07,0.1),
              child:SvgPicture.asset('assets/images/Group5.svg'),
            ),
          ],
        ),
        actions: <Widget>[
          new Container(
            child: Stack(
                children:[
                  Align(
                    child: Text('Ciaz',
                      style: new TextStyle(
                        //height:2.6,
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
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
            Container(
              color: Colors.white,
              height: 190,
              child:Column(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 5,
                          offset: Offset(0, 2)
                      ),
                    ],
                  ),
                  child: Container(
                    //  color: Colors.blue,
                    width: 500,
                    height: 160,
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          alignment: Alignment(-1.0,0.20),
                          child:Lottie.asset('assets/lottie/3108-ripple.json'),
                        ),
                        Container(
                          alignment: Alignment(-0.35,-0.6),
                          child:Text("Under Progress",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ) ,
                          ),
                        ),
                        Container(
                          alignment: Alignment(-0.09,-0.2),
                          child:Text("Vehicle Inspection Finished",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                        Container(
                          alignment: Alignment(-0.42,0.1),
                          child:Text("06:30 PM",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Track()));
                          },
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment(-0.80,1.0),
                                child:SvgPicture.asset('assets/images/Vector2.svg'),
                              ),
                              Container(
                                alignment: Alignment(-0.55,1.0),
                                child:Text("Track Location",
                                  style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                    fontSize: 14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ) ,
                                ),
                              ),
                            ],

                          ),
                        ),

                        Container(
                          alignment: Alignment(0.00,1.1),
                          child:SvgPicture.asset('assets/images/Line6.svg'),
                        ),
                        Container(
                          alignment: Alignment(0.24,1.0),
                          child:SvgPicture.asset('assets/images/Group144.svg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:140.0,left:255),
                          child: FlatButton(
                            //minWidth: 150,
                            //color: Colors.red,
                              child: Text('View Progress',
                                style:TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Progres()));
                              }

                          ),
                        )
                      ],
                    ),
                  ),

                ),



              ],
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
              child:Container(
                width: 500,
                height: 480,
                child: Stack(
                  children: [
                    Container(
                      child: Text("Order Details",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(-0.89,-0.92),
                    ),
                    Container(
                      child: Text("Periodic Service",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(-0.88,-0.77),
                    ),
                    Container(
                      child: Text("₹2249",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(0.85,-0.77),
                    ),
                    Container(
                      child: Text("Engine Oil Replacement",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(-0.86,-0.63),
                    ),
                    Container(
                      child: Text("₹149",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(0.85,-0.63),
                    ),
                    Container(
                      child: Text("Pick-up and Drop-off Charges",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(-0.82,-0.48),
                    ),
                    Container(
                      child: Text("₹149",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(0.85,-0.48),
                    ),
                    Container(
                      child: Text("Convenience Fee",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(-0.88,-0.33),
                    ),
                    Container(
                      child: Text("₹149",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(0.85,-0.33),
                    ),
                    Container(
                      child: Text("Total Amount",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish-Bold.ttf',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),alignment: Alignment(-0.89,-0.18),
                    ),
                    Container(
                      child: Text("₹2398",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish-Bold.ttf',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),alignment: Alignment(0.85,-0.18),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:205.0),
                      child: FlatButton(
                       // color: Colors.blue,
                        child: Text("Transaction Log",
                          style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Confirmorder()));
                          }

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:205.0,left:298),
                      child: FlatButton(
                        child: Text("Fully Paid",
                          style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Confirmorder()));
                          }

                      ),
                    ),
                    Container(
                      child: Text("Additional Comments (optional) ",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(-0.88,0.15),
                    ),
                    Container(
                      child: Text("The mileage is too low and the vehicle doesn’t start\nin the morning.",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ) ,
                      ),alignment: Alignment(-0.48,0.35),
                    ),
                    GestureDetector(
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 365.0,
                            left: 10.0,
                            right: 10.0,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: new BoxDecoration(
                                    gradient: new LinearGradient(colors: [
                                      const Color.fromRGBO(0,114,255,1),
                                      const Color.fromRGBO(0,198,255,1)
                                    ],),

                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  width: 382,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Container(
                                        alignment: Alignment(-0.8,0.03),
                                        child:Text("Amount Due: ₹398",
                                          style: TextStyle(color: Color.fromRGBO(255,255,255,1),
                                            fontSize: 14,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w800,
                                          ) ,
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment(0.6,0.03),
                                        child:Text("Pay Online",
                                          style: TextStyle(color: Color.fromRGBO(255,255,255,1),
                                            fontSize: 14,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w800,
                                          ) ,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:325.0,top: 19),
                                        child:SvgPicture.asset('assets/images/right.svg'),
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

                    Container(
                      child: Text("Pay your bill online to avoid cash hassles.",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ) ,
                      ),alignment: Alignment(-0.1,0.87),
                    ),
                  ],
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
                height: 150,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment(-0.8,-0.75),
                      child:Text("Chosen Service Center",style:
                      TextStyle(
                        color: Color.fromRGBO(130,130,130,1),
                        fontSize:14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment(-0.89,0.20),
                          image:AssetImage('assets/images/image10.png'),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment(-0.35,0.05),
                      child:Text("Universal Honda",
                        style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(0.12,0.05),
                      child:SvgPicture.asset('assets/images/Vector.svg'),
                    ),
                    Container(
                      alignment: Alignment(0.23,0.05),
                      child:SvgPicture.asset('assets/images/flat.svg'),
                    ),
                    Container(
                      //height:80,
                      alignment: Alignment(-0.52,0.35),
                      child:SvgPicture.asset('assets/images/location.svg'),
                    ),
                    Container(
                      child: Text("Paldi",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),alignment: Alignment(-0.40,0.35),
                    ),
                    Container(
                      alignment: Alignment(0.80,0.18),
                      child:SvgPicture.asset('assets/images/Vector1.svg'),
                    ),

                  ],
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
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment(-0.81,-0.76),
                      child:Text("Your Service Advisor",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment(-0.84,0.25),
                          image:AssetImage('assets/images/men.png'),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment(-0.24,-0.23  ),
                      child:Text("Ilesh Zala",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(0.03,0.02  ),
                      child:Text("DL No: GJ1800020201165",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(-0.35,0.50),
                      child:SvgPicture.asset('assets/images/loc.svg'),
                    ),
                    Container(
                      alignment: Alignment(-0.02,0.5),
                      child:Text("Track Location",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(0.28,0.53),
                      child:SvgPicture.asset('assets/images/Line.svg'),
                    ),
                    Container(
                      alignment: Alignment(0.43,0.53),
                      child:SvgPicture.asset('assets/images/phone.svg'),
                    ),
                    Container(
                      alignment: Alignment(0.85,0.5),
                      child:Text("Call Advisor",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return Dialog(
    backgroundColor: Colors.transparent,
    insetPadding: EdgeInsets.all(10),
    child: Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 359,
          height: 229,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Colors.white),
          child: Column(
            children: <Widget>[
              Container(
                height:55,
                alignment: Alignment(-0.10,0.7),
                child: Text("Payment Successful",
                  style: TextStyle(color: Color.fromRGBO(0,0,0,1),
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                  ) ,
                ),
              ),
              Container(
                height:80,
                alignment: Alignment(0.63,0.5),
                child: Text("Thank you for making a payment of\n₹2000. Your order will be updated\nautomatically.",
                  style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                  ) ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: Container(
                    height: 40,
                    width: 183.33,
                    child :RaisedButton(
                      child: Text("View Order",
                        style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w800,
                        ) ,),
                      //elevation: 6.0,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Confirmorder()));
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
        ),
      ],
    ),
  );
}
