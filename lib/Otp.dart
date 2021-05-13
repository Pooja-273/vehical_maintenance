import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/PersonalDetail.dart';
import 'package:vehical_maintenance/mydetails.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
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
        elevation: 1.0,
        leading: new IconButton(
          icon: SvgPicture.asset('assets/images/back.svg'),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Color.fromRGBO(246, 251, 255,1),
      body:SingleChildScrollView(
        child: Container(
          height: 500,
          width: 400,
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
                    Text("Enter OTP", style: TextStyle(
                      color: Color.fromRGBO(33,33,33,1),
                      fontSize: 22,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                    )
                    ),
                    SizedBox(height:36,width: 250),
                    Text.rich(
                      TextSpan(
                        children:[
                          TextSpan(text:'Please enter the OTP sent to the mobile \n number ',style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )),
                          TextSpan(text: '9033273966',
                            style: TextStyle(
                              color: Color.fromRGBO(0,114,255,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w800,
                          )),
                        ],
                    ),
              ),
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
                                  hintText: "1  2  3  4 ",
                                  hintStyle: TextStyle(
                                    letterSpacing: 2.0,
                                      color: Color.fromRGBO(51,51,51,1),
                                      fontSize:18,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400),
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 60),
                        Center(
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
                                    builder: (context) => PersonalInfo()));
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

              ),

            ],
          ),
        ),
      ),
    );
  }
}
