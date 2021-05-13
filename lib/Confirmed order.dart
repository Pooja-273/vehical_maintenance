import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:vehical_maintenance/Account.dart';
import 'package:vehical_maintenance/Confirmed%20order-2.dart';
import 'package:vehical_maintenance/PersonalDetail.dart';
import 'package:vehical_maintenance/Track%20Location.dart';
import 'package:vehical_maintenance/Underprogress-1.dart';
import 'package:vehical_maintenance/Underprogress.dart';


class Confirmorder extends StatefulWidget {
  @override
  _ConfirmorderState createState() => _ConfirmorderState();
}

class _ConfirmorderState extends State<Confirmorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: SvgPicture.asset('assets/images/back.svg'),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,

      ),
      backgroundColor: Color.fromRGBO(246,251,255,1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 110,
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
                    height: 73,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,right: 20),
                          child: Container(
                            alignment: Alignment(-0.93,-0.50),
                            child:Lottie.asset('assets/lottie/lf30_editor_xdd5l73m.json'),
                          ),
                        ),
                        Container(
                          alignment: Alignment(-0.34,-0.7),
                          child:Text("Order Confirmed.",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                              fontSize: 16,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ) ,
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.29,1.0),
                          child:Text("Worrying about progress, bills is a thing\nof past. Track the progress right here.",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
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
            SizedBox(height: 10),
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
                height: 580,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment(-0.8,-0.93),
                      child:Text("Order ID OD4583215497666",style:
                      TextStyle(
                        color: Color.fromRGBO(130,130,130,1),
                        fontSize:14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Progres()));
                          },
                          child: Container(
                            alignment: Alignment(0.9,-0.93),
                                    child: Text("Track Progress",
                                      style: TextStyle(
                                        color: Color.fromRGBO(0,114,255,1),
                                        fontSize:14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment(-0.89,-0.80),
                              image:AssetImage('assets/images/image10.png'),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(-0.35,-0.78),
                          child:Text("Universal Honda",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ) ,
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.12,-0.78),
                          child:SvgPicture.asset('assets/images/Vector.svg'),
                        ),
                        Container(
                          alignment: Alignment(0.23,-0.78),
                          child:SvgPicture.asset('assets/images/flat.svg'),
                        ),
                        Container(
                          //height:80,
                          alignment: Alignment(-0.52,-0.71),
                          child:SvgPicture.asset('assets/images/location.svg'),
                        ),
                        Container(
                          child: Text("Paldi",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(-0.40,-0.72),
                        ),
                        Container(
                          alignment: Alignment(0.80,-0.77),
                          child:SvgPicture.asset('assets/images/Vector1.svg'),
                        ),
                        Container(
                          child: Text("Order Details",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(-0.88,-0.56),
                        ),
                        Container(
                          child: Text("Periodic Service",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(-0.88,-0.42),
                        ),
                        Container(
                          child: Text("₹2249",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(0.85,-0.42),
                        ),
                        Container(
                          child: Text("Engine Oil Replacement",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(-0.86,-0.30),
                        ),
                        Container(
                          child: Text("₹149",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(0.85,-0.30),
                        ),
                        Container(
                          child: Text("Pick-up and Drop-off Charges",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(-0.82,-0.18),
                        ),
                        Container(
                          child: Text("₹149",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(0.85,-0.18),
                        ),
                        Container(
                          child: Text("Convenience Fee",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(-0.88,-0.06),
                        ),
                        Container(
                          child: Text("₹149",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(0.85,-0.06),
                        ),
                        Container(
                          child: Text("Total Amount",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish-Bold.ttf',
                              fontWeight: FontWeight.w700,
                            ) ,
                          ),alignment: Alignment(-0.89,0.06),
                        ),
                        Container(
                          child: Text("₹2398",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish-Bold.ttf',
                              fontWeight: FontWeight.w700,
                            ) ,
                          ),alignment: Alignment(0.85,0.06),
                        ),
                        Container(
                          child: Text("Transaction Log",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(-0.89,0.18),
                        ),
                        Container(
                          child: Text("₹2000 Paid",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(0.85,0.18),
                        ),
                        Container(
                          child: Text("Additional Comments",
                            style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),alignment: Alignment(-0.88,0.33),
                        ),
                        Container(
                          child: Text("The mileage is too low and the vehicle doesn’t start\nin the morning.",
                            style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                            ) ,
                          ),alignment: Alignment(-0.48,0.48),
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
                                bottom: 60.0,
                                left: 10.0,
                                right: 10.0,
                                child: Card(
                                  //  elevation: 3.0,
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
                          ),alignment: Alignment(-0.1,0.90),
                        ),

                      ],
                    )


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
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => orderConfirm()));
                      },
                      child: Stack(
                        children: [
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
                    )
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
                alignment: Alignment(-0.22,0.7),
                child: Text("Payment Failed",
                  style: TextStyle(color: Color.fromRGBO(0,0,0,1),
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                  ) ,
                ),
              ),
              Container(
                height:80,
                alignment: Alignment(0.93,0.5),
                child: Text(" Unfortunately, we couldn’t process\n your payment. If any amount is\n deducted from your account, it will be\n refunded automatically.",
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
                      child: Text("Retry Payment",
                        style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w800,
                        ) ,),
                      //elevation: 6.0,
                      onPressed: (){showDialog(
                        context: context,
                        builder: (BuildContext context) => _buildPopup(context),
                      );
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
Widget _buildPopup(BuildContext context) {
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

