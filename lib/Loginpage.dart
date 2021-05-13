import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Bottomnavigation.dart';
import 'package:vehical_maintenance/Emergency.dart';
import 'package:vehical_maintenance/Intro.dart';
import 'package:vehical_maintenance/extra.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.white,
      body:Container(
          height:870,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 105),
                    Align(
                      alignment: Alignment(0.04,0.2),
                      child:SvgPicture.asset('assets/images/black.svg'),
                    ),
                    SizedBox(height:25),
                    Container(
                      height: 33,
                      alignment: Alignment(0.25,3.1),
                      child:Text("The Only Vehicle Maintenance",
                        style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 22,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w800,
                        ) ,
                      ),
                    ),
                    Container(
                  height: 29,
                        alignment: Alignment(0.2,3.20),
                        child:Text("App You'll Ever Need.",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 22,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w800,
                          ) ,
                        ),
                      ),

                  ],
                ),
              ),
             // SizedBox(height:50,),
              Container(
                width: 550,
                  height: 140,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment(-0.5,-0.18),
                child:SvgPicture.asset('assets/images/Right.svg'),
                      ),
                      Container(
                        alignment: Alignment(-0.70,0.65),
                        child:Text("Company Authorised",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                      ),
                      Center(
                        child: Container(
                          alignment: Alignment(-0.59,0.98),
                          child:Text("Service Centers",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                              fontSize: 13,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                      ),
                      Container(
                            alignment: Alignment(0.6,-0.17),
                            child:SvgPicture.asset('assets/images/flat5.svg'),
                      ),
                      Container(
                        alignment: Alignment(0.80,0.65),
                        child:Text("Local Multi-Brand",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                      ),
                          Container(
                          alignment: Alignment(0.70,0.98),
                          child:Text("Workshops",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                              fontSize: 13,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                      Container(
                            alignment: Alignment(-0.5,2.8),
                            child:SvgPicture.asset('assets/images/distance2.svg'),
                      ),
                      Container(
                        alignment: Alignment(-0.60,3.1),
                        child:Text("Live Location &",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                      ),
                      Center(
                        child: Container(
                          alignment: Alignment(-0.61,3.35),
                          child:Text("Progress Updates",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                              fontSize: 13,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                      ), Container(
                        alignment: Alignment(-0.60,3.1),
                        child:Text("Live Location &",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                      ),
                      Center(
                        child: Container(
                          alignment: Alignment(-0.61,3.35),
                          child:Text("Progress Updates",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                              fontSize: 13,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment(0.6,2.9),
                           child:SvgPicture.asset('assets/images/Group88.svg'),
                          ),
                      Container(
                        alignment: Alignment(0.68,3.10),
                        child:Text("Puncture &",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                      ),
                      Container(
                        alignment: Alignment(0.75,3.33),
                        child:Text("Breakdown Help",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 13,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                      ),
                     // SizedBox(height: 0),

                    ],
                      ),
              ),
              SizedBox(height: 200,),
                 Center(
                   child: Container(
                    //margin: EdgeInsets.only(top:90.0),
                    height: 45,
                    width: 345,
                    child :RaisedButton(
                      child: Text("Log in Now",
                        style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                    ) ,),
                      //elevation: 6.0,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Introduction()));
                      },
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),),
                      color: Color.fromRGBO(0,114,255,1),

                    ),
                ),
                 ),
                    ],

                  ),

                ),
    );



  }
}
