import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vehical_maintenance/Bottomnavigation.dart';
import 'dart:async';
import 'dart:convert';

import 'package:vehical_maintenance/Mainpage.dart';


class PersonalInfo extends StatefulWidget {

  final FirebaseUser user;

  PersonalInfo({this.user});
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}
class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Stack(
        children: [
          Align(
            alignment: Alignment(-1.2,-0.1),
            child: Text(
              "Back",
              style: TextStyle(color: Color.fromRGBO(79,79,79,1),
              fontSize: 14,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,),
            ),
          )
        ],
      ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: new IconButton(
          icon: SvgPicture.asset('assets/images/back.svg'),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Color.fromRGBO(246, 251, 255,1),
      body: SingleChildScrollView(
        child: Container(
          height: 700,
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
                    SizedBox(height:23),
                    Text("Enter Details", style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                    )
                    ),
                    SizedBox(height:13),
                    Text("Tell us about yourself.We don't share this information with anybody.",
                      style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                        fontSize:14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                        //fontWeight: FontWeight.w600
                      ),)
                  ],
                ),
              ),
            Expanded(
            child: Padding(
                padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
            Container(
           // alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.only(left:5.0,top:5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(242,242,242,1)
                    ),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Your Full Name ",
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
                Container(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(242,242,242,1)
                            ),
                        ),
                    ),

                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Your Email ID",
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
                Container(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(242,242,242,1)
                            )
                        )
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Vehicle Name",
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
                Container(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(242,242,242,1)
                            )
                        )
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Vehicle Registration Number",
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

                SizedBox(height: 50),
                Container(
                  height: 45,
                  width: 345.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          colors: [
                            Color(0xFF2979FF),
                            Color(0xFF2962FF)
                          ]
                      )
                  ),
                  child: Container(
                    child: Center(
                      child: Container(
                        //margin: EdgeInsets.only(top:90.0),
                        height: 45,
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
                                builder: (context) => Bottombar()));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),),
                          color: Color.fromRGBO(0,114,255,1),

                        ),
                      ),
                    ),
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
    );
  }
}
