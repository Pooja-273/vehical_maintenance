import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Track extends StatefulWidget {
  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //elevation: 0,
      body: Stack(
        children: [
         SingleChildScrollView(
          child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: 700,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment(-0.23,0.30),
                            image:AssetImage('assets/images/image5.png',
                            ),
                            fit: BoxFit.fitHeight
                        ),
                      ),
                    ),

                  ],
                ),

                     SizedBox(height:0),
                        Container(
                          decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0),
                                )
                            ),
                          child:Container(
                            child: Container(
                              width: 500,
                              height: 250,
                              child: Stack(
                                children: [
                                  Container(
                                    alignment: Alignment(-0.80,-0.72),
                                    child:Text("Your Service Advisor",
                                      style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                   // height: 10,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        alignment: Alignment(-0.85,-0.01),
                                        image:AssetImage('assets/images/men.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.27,-0.3),
                                    child:Text("Ilesh Zalar",
                                      style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.02,-0.1),
                                    child:Text("DL No: GJ1800020201165",
                                      style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.35,0.25),
                                    child:SvgPicture.asset('assets/images/Group144.svg'),
                                  ),
                                  Container(
                                    alignment: Alignment(-0.10,0.24),
                                    child:Text("Updates",
                                      style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ) ,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment(0.20,0.25),
                                    child:SvgPicture.asset('assets/images/Line.svg'),
                                  ),
                                  Container(
                                    alignment: Alignment(0.35,0.25),
                                    child:SvgPicture.asset('assets/images/cell.svg'),
                                  ),
                                  Container(
                                    alignment: Alignment(0.83,0.25),
                                    child:Text("Call Advisor",
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
                          ),
                        ),
                   ],
          ),
        ),
          Stack(
            children: <Widget>[
              Positioned(
                top:1,
                left: 10,

                  child: Container(
                    child: IconButton(
                      alignment:Alignment (0.6,-0.02),
                      icon:SvgPicture.asset('assets/images/back.svg'),
                      onPressed: ()=> Navigator.of(context).pop(),
                    ),
                  ),
                ),

            ],
          )
                   ],
      ),
      );

  }
}
