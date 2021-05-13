import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Addressdetail.dart';
import 'package:vehical_maintenance/cardetail.dart';

class booking extends StatefulWidget {
  @override
  _bookingState createState() => _bookingState();
}

class _bookingState extends State<booking> {
  String _chosenValue;
  bool _checkbox = false;
  void onChanged(bool value){
    setState(() {
      _checkbox = value;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Container(
          height: 25,
          alignment:Alignment(1.07,0.1),
          child:SvgPicture.asset('assets/images/app.svg'),
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height:265,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment(-0.85,0.0),
                        child:Text("Enter Address",
                          style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                      ),
//                       new Row(
// //                        alignment: FractionalOffset.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: <Widget>[
//                           SizedBox(width: 15,),
//                              new Flexible(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(left:10,right:40),
//                                 child: new TextField(
//                                     decoration: InputDecoration(
//                                         hintText: "Block No",
//                                       hintStyle: TextStyle(
//                                           color: Color.fromRGBO(189,189,189,1),
//                                           fontSize:14,
//                                           fontFamily: 'Mulish',
//                                           fontWeight: FontWeight.w400),
//                                         //contentPadding: EdgeInsets.all(20)
//                                     )
//                                 ),
//                               ),
//                             ),
//                              new Flexible(
//                               child: new TextField(
//                                     decoration: InputDecoration(
//                                         hintText: "Landmark",
//                                         hintStyle: TextStyle(
//                                             color: Color.fromRGBO(189,189,189,1),
//                                             fontSize:14,
//                                             fontFamily: 'Mulish',
//                                             fontWeight: FontWeight.w400),
//                                     )
//                                 ),
//                               ),
//                           Expanded(
//                             child: TextField(
//                               keyboardType: TextInputType.multiline, minLines: 1, maxLines:2, ), )
//
//
//                         ],
//
//                       ),
                      SizedBox(height: 15,),
                         Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 27.0,right:10.0),
                                  child: TextField(
                                    // controller: commentController,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color.fromRGBO(242, 242, 242, 1))),
                                      hintText: "Block No",
                                      hintStyle: TextStyle(
                                          color: Color.fromRGBO(189,189,189,1),
                                          fontSize:14,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5.0,right:10.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color.fromRGBO(242, 242, 242, 1))),
                                      hintText: "Society",
                                      hintStyle: TextStyle(
                                          color: Color.fromRGBO(189,189,189,1),
                                          fontSize:14,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400),

                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left:30.0,right:15),
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(242, 242, 242, 1)),
                                  ),
                                  hintText: "Landmark",
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(189,189,189,1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400),
                                  //border: InputBorder.none
                                ),
                              ),
                            ),

                          ),

                        ],
                      ),



                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left:25.0,right:15),
                              child: TextField(
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(242, 242, 242, 1)),
                                  ),
                                  hintText: "Change Area",
                                  hintStyle: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color.fromRGBO(130,130,130,1),
                                      fontSize:12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width: 500,
                            height: 70,
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment(-0.20,0.10),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(width:15),
                                      Checkbox(
                                        value: _checkbox,
                                        onChanged: (bool value) {
                                          setState(() {
                                            this._checkbox = value;
                                          });
                                        },
                                      ),
                                      Text("Remember this address for next time",style: TextStyle(
                                        color: Color.fromRGBO(130, 130, 130, 1),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
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
                  child: Container(
                    width: 600,
                    height: 380,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-0.85,-0.86),
                          child:Text("Book a Slot",style:
                          TextStyle(
                            color: Color.fromRGBO(51,51,51,1),
                            fontSize:14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                          ),
                          ),
                        ),
                        Align(
                          alignment:Alignment(0.80,-0.86),
                          child: Text("08 - 14 Feb",
                            style:
                            TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontSize:14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top:68.0,left:15),
                                child: Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(246, 251, 255, 1),
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      width: 0.8,
                                      color: Color.fromRGBO(246, 251, 255, 1),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:0.0,top:13),
                                    child: Container(
                                        child:RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: '08\n',
                                            style: TextStyle(
                                              color: Color.fromRGBO(79,79,79, 1),
                                              fontSize:16,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(text: 'MON', style: TextStyle(
                                                color: Color.fromRGBO(130, 130, 130, 1),
                                                fontSize:12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                              ),),

                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:68.0,left:15),
                                child: Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        width: 0.8,
                                        color: Color.fromRGBO(224, 224, 224, 1)
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:0.0,top:13),
                                    child: Container(
                                        child:  RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: '09\n',
                                            style: TextStyle(
                                              color: Color.fromRGBO(79,79,79, 1),
                                              fontSize:16,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(text: 'TUE', style: TextStyle(
                                                color: Color.fromRGBO(130, 130, 130, 1),
                                                fontSize:12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                              ),),

                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ),//Conatiner widget
                              Padding(
                                padding: const EdgeInsets.only(top:68.0,left:15),
                                child: Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        width: 0.8,
                                        color: Color.fromRGBO(224, 224, 224, 1)
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:0.0,top:13),
                                    child: Container(
                                        child:  RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: '10\n',
                                            style: TextStyle(
                                              color: Color.fromRGBO(79,79,79, 1),
                                              fontSize:16,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(text: 'WED', style: TextStyle(
                                                color: Color.fromRGBO(130, 130, 130, 1),
                                                fontSize:12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                              ),),

                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:68.0,left:15),
                                child: Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        width: 0.8,
                                        color: Color.fromRGBO(224, 224, 224, 1)
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:0.0,top:13),
                                    child: Container(
                                        child:  RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: '11\n',
                                            style: TextStyle(
                                              color: Color.fromRGBO(79,79,79, 1),
                                              fontSize:16,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(text: 'THU', style: TextStyle(
                                                color: Color.fromRGBO(130, 130, 130, 1),
                                                fontSize:12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                              ),),

                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:68.0,left:15),
                                child: Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        width: 0.8,
                                        color: Color.fromRGBO(224, 224, 224, 1)
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:0.0,top:13),
                                    child: Container(
                                        child:  RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: '12\n',
                                            style: TextStyle(
                                              color: Color.fromRGBO(79,79,79, 1),
                                              fontSize:16,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(text: 'FRI', style: TextStyle(
                                                color: Color.fromRGBO(130, 130, 130, 1),
                                                fontSize:12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                              ),),

                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:68.0,left:15),
                                child: Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        width: 0.8,
                                        color: Color.fromRGBO(224, 224, 224, 1)
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:0.0,top:13),
                                    child: Container(
                                        child:  RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: '13\n',
                                            style: TextStyle(
                                              color: Color.fromRGBO(79,79,79, 1),
                                              fontSize:16,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(text: 'SAT', style: TextStyle(
                                                color: Color.fromRGBO(130, 130, 130, 1),
                                                fontSize:12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                              ),),

                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:68.0,left:15),
                                child: Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        width: 0.8,
                                        color: Color.fromRGBO(224, 224, 224, 1)
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:0.0,top:13),
                                    child: Container(
                                        child:  RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: '14\n',
                                            style: TextStyle(
                                              color: Color.fromRGBO(79,79,79, 1),
                                              fontSize:16,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w600,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(text: 'SUN', style: TextStyle(
                                                color: Color.fromRGBO(130, 130, 130, 1),
                                                fontSize:12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                              ),),

                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:158.0,left:20),
                              child: Container(
                                height: 41,
                                width: 161,
                                decoration: BoxDecoration(
                                  // color: Color.fromRGBO(246, 251, 255, 1),
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    width: 0.8,
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  ),
                                ),
                                child: Container(
                                  child:Text("09 - 10 AM",
                                    style:
                                    TextStyle(
                                      color: Color.fromRGBO(79, 79, 79, 1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),alignment: Alignment(0.1,0.2),
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:158,left:50),
                              child: Container(
                                height: 41,
                                width: 161,
                                decoration: BoxDecoration(
                                  // color: Color.fromRGBO(246, 251, 255, 1),
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    width: 0.8,
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  ),
                                ),
                                child: Container(
                                  child:Text("10 - 11 AM",
                                    style:
                                    TextStyle(
                                      color: Color.fromRGBO(79, 79, 79, 1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),alignment: Alignment(0.1,0.2),
                                ),

                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:210.0,left:20),
                              child: Container(
                                height: 41,
                                width: 161,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(246, 251, 255, 1),
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    width: 0.8,
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  ),
                                ),
                                child: Container(
                                  child:Text("11 - 12 PM",
                                    style:
                                    TextStyle(
                                      color: Color.fromRGBO(224, 224, 224, 1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),alignment: Alignment(0.1,0.2),
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:210,left:50),
                              child: Container(
                                height: 41,
                                width: 161,
                                decoration: BoxDecoration(
                                  // color: Color.fromRGBO(246, 251, 255, 1),
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    width: 0.8,
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  ),
                                ),
                                child: Container(
                                  child:Text("12 - 1 PM",
                                    style:
                                    TextStyle(
                                      color: Color.fromRGBO(79, 79, 79, 1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),alignment: Alignment(0.1,0.2),
                                ),

                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:264.0,left:20),
                              child: Container(
                                height: 41,
                                width: 161,
                                decoration: BoxDecoration(
                                  // color: Color.fromRGBO(246, 251, 255, 1),
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    width: 0.8,
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  ),
                                ),
                                child: Container(
                                  child:Text("1 - 2 PM",
                                    style:
                                    TextStyle(
                                      color: Color.fromRGBO(79, 79, 79, 1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),alignment: Alignment(0.1,0.2),
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:264,left:50),
                              child: Container(
                                height: 41,
                                width: 161,
                                decoration: BoxDecoration(
                                  // color: Color.fromRGBO(246, 251, 255, 1),
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    width: 0.8,
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  ),
                                ),
                                child: Container(
                                  child:Text("2 - 3 PM",
                                    style:
                                    TextStyle(
                                      color: Color.fromRGBO(79, 79, 79, 1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),alignment: Alignment(0.1,0.2),
                                ),

                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:310.0,left:20),
                              child: Container(
                                height: 41,
                                width: 161,
                                decoration: BoxDecoration(
                                  // color: Color.fromRGBO(246, 251, 255, 1),
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    width: 0.8,
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  ),
                                ),
                                child: Container(
                                  child:Text("3 - 4 PM",
                                    style:
                                    TextStyle(
                                      color: Color.fromRGBO(79, 79, 79, 1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),alignment: Alignment(0.1,0.2),
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:310,left:50),
                              child: Container(
                                height: 41,
                                width: 161,
                                decoration: BoxDecoration(
                                  // color: Color.fromRGBO(246, 251, 255, 1),
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    width: 0.8,
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  ),
                                ),
                                child: Container(
                                  child:Text("4 - 5 PM",
                                    style:
                                    TextStyle(
                                      color: Color.fromRGBO(79, 79, 79, 1),
                                      fontSize:14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),alignment: Alignment(0.1,0.2),
                                ),

                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),

                ),

                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(5.0),
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
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment(-0.93,-0.70),
                              image:AssetImage('assets/images/image2.png',
                              ),
                            ),
                          ),),
                        Container(
                          // height: 700,
                          alignment: Alignment(-0.20,-0.6),
                          child:Text("Universal Honda",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                              fontSize: 16,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ) ,
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.27,-0.58),
                          child:SvgPicture.asset('assets/images/Vector.svg'),
                        ),
                        Container(
                          alignment: Alignment(0.38,-0.58),
                          child:SvgPicture.asset('assets/images/flat.svg'),
                        ),

                        Container(
                          alignment: Alignment(-0.46,-0.26),
                          child:SvgPicture.asset('assets/images/location.svg'),
                        ),
                        Container(
                          alignment: Alignment(-0.33,-0.26),
                          child: Text("Paldi",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.82,0.5),
                          child:SvgPicture.asset('assets/images/star.svg'),
                        ),
                        Container(
                          alignment: Alignment(0.95,0.55),
                          child: Text("4.5",
                            style: TextStyle(color: Color.fromRGBO(33,150,83,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ) ,
                          ),
                        ),
                        Container(
                          child: Text("323 Reviews",
                            style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                          alignment:Alignment(0.95,0.8),
                        ),
                        Container(
                          child: Text("Pick up & Drop Off",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 10,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                            ) ,
                          ),
                          alignment:Alignment(-0.90,0.5),
                        ),
                        Container(
                          child: Text("₹149",
                            style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                          alignment:Alignment(-0.90,0.8),
                        ),
                        Container(
                          child: Text("Managed By",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 10,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                            ) ,
                          ),
                          alignment:Alignment(-0.06,0.5),
                        ),
                        Container(
                          child: Text("Universal Honda",
                            style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                          alignment:Alignment(0.06,0.8),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Stack(
          //   children: <Widget>[
          //     Positioned(
          //       bottom: 35,
          //       left: 10,
          //       right: 10,
          //       child: GestureDetector(
          //         onTap: (){
          //           Navigator.push(context, MaterialPageRoute(
          //               builder: (context) => Addressdetail()));
          //         },
          //         child: Container(
          //           height: 58,
          //           margin: EdgeInsets.all(20),
          //           decoration: BoxDecoration(
          //
          //             color: Color.fromRGBO(0, 197, 102, 1),
          //             borderRadius: BorderRadius.circular(5),
          //
          //           ),
          //           child: ClipRRect(
          //             borderRadius: BorderRadius.circular(5),
          //             child: Container(
          //                 child: Stack(children: <Widget>[
          //                   Positioned(
          //                     child: Container(
          //                         color: Color.fromRGBO(0, 197, 102, 1),
          //                         height: 200,
          //                         alignment: Alignment(-0.85, -0.5),
          //                         child: Text("₹2249", style: TextStyle(
          //                           color: Color.fromRGBO(255, 255, 255, 1),
          //                           fontSize: 16,
          //                           fontFamily: 'Mulish',
          //                           fontWeight: FontWeight.w800,
          //                         ),
          //                         )
          //                     ),
          //
          //                   ),
          //                   Container(
          //                     alignment: Alignment(-0.85, 0.5),
          //                     child: Text("2 services", style: TextStyle(
          //                       color: Color.fromRGBO(255, 255, 255, 1),
          //                       fontSize: 12,
          //                       fontFamily: 'Mulish',
          //                       fontWeight: FontWeight.w800,
          //                     ),
          //                     ),
          //                   ),
          //                   Container(
          //                     alignment: Alignment(0.75, 0.01),
          //                     child: Text("Proceed",
          //                       style: TextStyle(
          //                         color: Color.fromRGBO(255, 255, 255, 1),
          //                         fontSize: 16,
          //                         fontFamily: 'Mulish',
          //                         fontWeight: FontWeight.w800,
          //                       ),
          //                     ),
          //                   ),
          //                   Container(
          //                     alignment: Alignment(0.9, 0.1),
          //                     child: SvgPicture.asset(
          //                         'assets/images/right.svg'),
          //                   ),
          //                 ],)
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>Addressdetail()));

            },
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 30.0,
                  left: 10.0,
                  right: 10.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: new BoxDecoration(
                          color: Color.fromRGBO(0, 197, 102, 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 348,
                        height: 58,
                        child: Stack(
                          children: [
                            Container(
                              alignment: Alignment(-0.85, -0.5),
                              child:Text("₹2249",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 16,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment(-0.85, 0.5),
                              child:Text("2 services",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment(0.75, 0.01),
                              child: Text("Proceed",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 16,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment(0.9, 0.1),
                              child: SvgPicture.asset(
                                  'assets/images/right.svg'),
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
        ],
      ),


    );
  }
}
