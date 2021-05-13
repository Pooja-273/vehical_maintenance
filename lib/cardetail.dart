import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';
import 'package:vehical_maintenance/Addressdetail.dart';
import 'package:vehical_maintenance/Confirmed%20order.dart';
import 'package:vehical_maintenance/PersonalDetail.dart';
import 'package:vehical_maintenance/servicebooking.dart';

class CarDetail extends StatefulWidget {

  @override
  _CarDetailState createState() => _CarDetailState();
}


class _CarDetailState extends State<CarDetail> {
  double _animatedHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Align(
          alignment:Alignment(1.07,-0.1),
          child:SvgPicture.asset('assets/images/Group75.svg'),
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 145,
                  child: Column(children: <Widget>[
                    Container(
                      width: 500,
                      height: 140,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment(-0.9,-0.80),
                                image: AssetImage('assets/images/image2.png',
                                ),
                              ),
                            ),),
                          Container(
                            alignment: Alignment(-0.20,-0.6),
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
                            alignment: Alignment(0.27,-0.60),
                            child: SvgPicture.asset('assets/images/Vector.svg'),
                          ),
                          Container(
                            alignment: Alignment(0.38, -0.60),
                            child: SvgPicture.asset('assets/images/flat.svg'),
                          ),
                          Container(
                            alignment: Alignment(-0.43,-0.18),
                            child: SvgPicture.asset('assets/images/location.svg'),

                          ),
                          Container(
                            alignment: Alignment(-0.29,-0.18),
                            child: Text("Paldi",
                              style: TextStyle(
                                color: Color.fromRGBO(130, 130, 130, 1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:80.0),
                            child: Container(
                              height:60,
                              width:90,
                              // color:Colors.blue,
                              child: Stack(
                                  children:[
                                    IconButton(
                                      alignment: Alignment(0.80,0.15),
                                      //padding: EdgeInsets.only(right:15.0,top:18),
                                      icon:SvgPicture.asset('assets/images/star.svg'),
                                      onPressed: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => _buildPopupDialog(context),
                                        );
                                      },
                                    ),
                                    Container(
                                      child: Text("4.5",
                                        style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                                          fontSize: 14,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                        ) ,
                                      ),
                                      alignment: Alignment(0.20,-0.1),
                                    ),
                                    Container(
                                      child: Text("323 Reviews",
                                        style: TextStyle(
                                          color: Color.fromRGBO(130, 130, 130, 1),
                                          fontSize: 11,
                                          decoration: TextDecoration.underline,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      alignment: Alignment(0.90,0.70),
                                    ),
                                  ]
                              ),
                            ),
                          ),

                          Container(
                            child: Text("Pick up & Drop Off",
                              style: TextStyle(
                                color: Color.fromRGBO(130, 130, 130, 1),
                                fontSize: 10,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            alignment: Alignment(-0.07,0.6),
                          ),
                          Container(
                            child: Text("₹149",
                              style: TextStyle(
                                color: Color.fromRGBO(79, 79, 79, 1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            alignment: Alignment(-0.20,0.88),
                          ),
                          Container(
                            child: Text("Managed By",
                              style: TextStyle(
                                color: Color.fromRGBO(130, 130, 130, 1),
                                fontSize: 10,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            alignment: Alignment(0.68,0.6),
                          ),
                          Container(
                            child: Text("Universal Honda",
                              style: TextStyle(
                                color: Color.fromRGBO(79, 79, 79, 1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            alignment: Alignment(0.88, 0.88),
                          ),

                        ],
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
                    height: 280,
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment(-0.9, -0.80),
                          child: SvgPicture.asset('assets/images/repair.svg'),
                        ),
                        Container(
                          child: Text("General Service",
                            style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.64, -0.77),
                        ),
                        Container(
                          alignment: Alignment(-0.88, -0.25),
                          child: Image(
                            image: AssetImage('assets/images/image4.png'
                            ),
                          ),
                        ),
                        Container(
                          child: Text("Periodic Service",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.26, -0.40),
                        ),
                        Container(
                          child: Text("₹2249",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.39, -0.24),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 300, top: 65),
                                child: FlatButton(
                                  height: 27,
                                  minWidth: 71,
                                  color: Color.fromRGBO(235, 87, 87, 0.05),
                                  child: Text('Remove',
                                    style: TextStyle(
                                      color: Color.fromRGBO(235, 87, 87, 1),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onPressed: () {},
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(5.0),


                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:118.0,left:108),
                          child: Container(
                            width: 275,
                            // color: Colors.red,
                            child: ReadMoreText(
                              'A 21-point checklist process to ensure your car gets the periodic care it needs. This involves a thorough check on every part. It involves Engine Oil replacement, Oil Filter replacement and much more.',
                              trimLines: 2,
                              style:TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,),
                              //colorClickableText: Color.fromRGBO(51, 51, 51, 1),
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'View more',
                              trimExpandedText: ' View less',
                            ),
                          ),
                        ),


                        // Container(
                        //   child: Text(
                        //     "A 21-point checklist process to ensureyour\n car gets the periodic care it need ... view more",
                        //     style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                        //       fontSize: 12,
                        //       fontFamily: 'Mulish',
                        //       fontWeight: FontWeight.w400,
                        //     ),
                        //   ), alignment: Alignment(0.6, 0.01),
                        // ),
                        Container(
                          child: Text("Engine Oil Replacement",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.82, 0.35),
                        ),
                        Container(
                          child: Text("₹149",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.87, 0.50),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 300, top: 172),
                                child: FlatButton(
                                  height: 27,
                                  minWidth: 71,
                                  child: Text('Add',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 114, 255, 1),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onPressed: () {},
                                  shape: new RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.blue),
                                    borderRadius: new BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "A 21-point checklist process to ensure your car ... view more",
                            style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                            ),
                          ), alignment: Alignment(-0.30, 0.70),
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
                          alignment: Alignment(-0.9, -0.80),
                          child: SvgPicture.asset('assets/images/wash.svg'),
                        ),
                        Container(
                          child: Text("Car Wash",
                            style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.70, -0.75),
                        ),
                        Container(
                          child: Text("Complete Car Wash",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.85, -0.20),
                        ),
                        Container(
                          child: Text("₹149",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.87, 0.01),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 300, top: 71),
                                child: FlatButton(
                                  height: 27,
                                  minWidth: 71,
                                  child: Text('Add',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 114, 255, 1),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onPressed: () {},
                                  shape: new RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.blue),
                                    borderRadius: new BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text("Exterior Car Wash",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.85, 0.42),
                        ),
                        Container(
                          child: Text("₹149",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.87, 0.62),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 300, top: 135),
                                child: FlatButton(
                                  height: 27,
                                  minWidth: 71,
                                  child: Text('Add',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 114, 255, 1),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onPressed: () {

                                  },
                                  shape: new RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.blue),
                                    borderRadius: new BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ],
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
                          alignment: Alignment(-0.9, -0.80),
                          child: SvgPicture.asset('assets/images/wash.svg'),

                        ),
                        Container(
                          child: Text("Car Wash",
                            style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.70, -0.75),
                        ),
                        Container(
                          child: Text("Complete Car Wash",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.85, -0.20),
                        ),
                        Container(
                          child: Text("₹149",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.87, 0.01),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 300, top: 71),
                                child: FlatButton(
                                  height: 27,
                                  minWidth: 71,
                                  child: Text('Add',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 114, 255, 1),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onPressed: () {},
                                  shape: new RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.blue),
                                    borderRadius: new BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text("Exterior Car Wash",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.85, 0.42),
                        ),
                        Container(
                          child: Text("₹149",
                            style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ), alignment: Alignment(-0.87, 0.62),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 300, top: 135),
                                child: FlatButton(
                                  height: 27,
                                  minWidth: 71,
                                  child: Text('Add',
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 114, 255, 1),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onPressed: () {},
                                  shape: new RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.blue),
                                    borderRadius: new BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),

                ),

              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>booking()));

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
