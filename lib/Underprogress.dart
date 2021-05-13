import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:vehical_maintenance/Track%20Location.dart';
import 'package:vehical_maintenance/Underprogress-1.dart';

class Progres extends StatefulWidget {
  @override
  _ProgresState createState() => _ProgresState();
}

class _ProgresState extends State<Progres> {
  int current_step = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              height: 170,
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
                    width: 500,
                    height: 160,
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          alignment: Alignment(-1.0,-0.50),
                          child:Lottie.asset('assets/lottie/3108-ripple.json'),
                        ),
                        Container(
                          alignment: Alignment(-0.33,-0.73),
                          child:Text("Under Progress",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ) ,
                          ),
                        ),
                        Container(
                          alignment: Alignment(-0.09,-0.45),
                          child:Text("Vehicle Inspection Finished",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                        Container(
                          alignment: Alignment(-0.42,-0.15),
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
                                alignment: Alignment(-0.80,0.70),
                                child:SvgPicture.asset('assets/images/Vector2.svg'),
                              ),
                              Container(
                                alignment: Alignment(-0.55,0.70),
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
                          alignment: Alignment(0.00,0.75),
                          child:SvgPicture.asset('assets/images/Line6.svg'),
                        ),
                        Container(
                          alignment: Alignment(0.24,0.70),
                          child:SvgPicture.asset('assets/images/file.svg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:105.0,left:255),
                          child: FlatButton(
                            //minWidth: 150,
                            //color: Colors.red,
                              child: Text('View Order',
                                style:TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => underProgress()));
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
              child: Container(
                width: 500,
                height: 450,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment(-0.86,-0.88),
                      child:Text("Progress Updates",style:
                      TextStyle(
                        color: Color.fromRGBO(130,130,130,1),
                        fontSize:14,
                        fontFamily: 'Mulish-Regular.ttf',
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),
                     Container(
                       margin: EdgeInsets.only(top:50.0,left: 8),
                       child: Stepper(
                          steps: [
                              Step(
                                title:Text("Order Confirmed"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign: TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: true,
                              ),
                              Step(
                                title: Text("Service Advisor Assigned"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign: TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: true,

                              ),
                              Step(
                                title: Text("Service Advisor Out for Pick-up"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign: TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: true,

                              ),
                              Step(
                                title: Text("Vehicle Picked Up"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign: TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: true,

                              ),
                              Step(
                                title: Text("Vehicle Picked Up"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign: TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: true,

                              ),
                              Step(
                                title: Text("Inspection Finished"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign: TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: true,

                              ),
                              Step(
                                title: Text("Service Execution Finished"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign: TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: false,
                              ),
                              Step(
                                title: Text("Final Inspection Finished"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign: TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: false,
                              ),
                              Step(
                                title: Text("Vehicle Out for Delivery"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign: TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: false,
                              ),
                              Step(
                                title: Text("Vehicle Delivered"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign: TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: false,
                              ),
                              Step(
                                title: Text("Order Completed"),
                                subtitle: Container(
                                  height: 20,
                                  alignment: Alignment(-0.98,0.5),
                                  child: Text("09 Feb, 6:34 PM",style:TextStyle(
                                    color: Color.fromRGBO(130,130,130,1),
                                    fontSize:12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),textAlign:TextAlign.start,),
                                ),
                                content: Text(""),
                                state: StepState.complete,
                                isActive: false,
                              ),
                            ],
                              currentStep: current_step,
                            onStepTapped: (index) {
                              setState(() {
                                current_step = index;
                              });
                            },
                         controlsBuilder: (BuildContext context,
                             {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
                             Container(),

                          ),
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
                      child:Text("Pick-up and Drop-off Details",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(-0.86,-0.30),
                      child:SvgPicture.asset('assets/images/Group12.svg'),
                    ),
                    Container(
                      alignment: Alignment(-0.28,-0.30),
                      child:Text("Maruti Suzuki Ciaz (GJ18 AJ 1840)",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(-0.84,0.18),
                      child:SvgPicture.asset('assets/images/vec.svg'),
                    ),
                    Container(
                      alignment: Alignment(0.04,0.20),
                      child:Text("1208, Phoenix, Near Commerce Six Roads,\nNavrangpura",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(-0.84,0.71),
                      child:SvgPicture.asset('assets/images/Group.svg'),
                    ),
                    Container(
                      alignment: Alignment(-0.56,0.71),
                      child:Text("09 Feb, 10-11 AM",
                        style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
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
