import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Confirmed%20order.dart';

class Addressdetail extends StatefulWidget {
  @override
  _AddressdetailState createState() => _AddressdetailState();
}

class _AddressdetailState extends State<Addressdetail> {
  bool _checkbox = false;
  bool _checkbox1 = false;
  void onChanged(bool value){
    setState(() {
      _checkbox = value;
      _checkbox1 = value;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Align(
              alignment:Alignment(1.07,-0.1),
              child: Image(
                image: AssetImage('assets/images/17.png'
                ),
              ),
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
                height: 340,
                child:Column(children: <Widget>[
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
                      height: 260,
                      child: Stack(
                        children: [
                        Container(
                         // color: Colors.red,
                          decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment(-0.89,-0.8),
                            image:AssetImage('assets/images/image10.png',
                            ),
                          ),
                        ),
                      ),
                          Container(
                            alignment: Alignment(-0.35,-0.72),
                            child:Text("Universal Honda",
                              style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(0.10,-0.72),
                            child:SvgPicture.asset('assets/images/Vector.svg'),
                          ),
                          Container(
                            alignment: Alignment(0.20,-0.72),
                            child:SvgPicture.asset('assets/images/flat.svg'),
                          ),

                          Container(
                            //height:80,
                            alignment: Alignment(-0.50,-0.52),
                                child:SvgPicture.asset('assets/images/location.svg'),
                          ),
                            Container(
                              child: Text("Paldi",
                                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ) ,
                              ), alignment:Alignment(-0.38,-0.54),
                            ),
                          Container(
                            child: Text("Periodic Service",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ), alignment:Alignment(-0.87,-0.1),
                          ),
                          Container(
                            child: Text("₹2249",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ), alignment:Alignment(-0.88,0.07),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:300,top:92),
                                  child: FlatButton(
                                    height: 27,
                                    minWidth: 71,
                                    color: Color.fromRGBO(235,87,87,0.05),
                                    child: Text('Remove',
                                      style: TextStyle(color: Color.fromRGBO(235,87,87,1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ) ,
                                    ),
                                    onPressed: (){},
                                    shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text("Engine Oil Replacement",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ), alignment:Alignment(-0.85,0.38),
                          ),
                          Container(
                            child: Text("₹149",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ), alignment:Alignment(-0.88,0.57),
                          ),
                          Container(
                            child: Text("Additional Comments (optional) ",
                              style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                              ) ,
                            ), alignment:Alignment(-0.83,0.90),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            alignment: Alignment(-0.3,1.73),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromRGBO(242,242,242,1)
                                      )
                                  )
                              ),
                              child: Padding(
                              padding: const EdgeInsets.only(left:7),
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: "The mileage is too low and the vehicle doesn’t start\n in the morning.",
                                      labelStyle: TextStyle(
                                          color: Color.fromRGBO(51,51,51,1),
                                          fontSize:14,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Container(
                          //   child: Text("The mileage is too low and the vehicle doesn’t start\nin the morning. ",
                          //     style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                          //       fontSize: 14,
                          //       fontFamily: 'Mulish-Regular.ttf',
                          //       fontWeight: FontWeight.w400,
                          //     ) ,
                          //   ), alignment:Alignment(-0.53,1.38),
                          // ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:300,top:150),
                                  child: FlatButton(
                                    height: 27,
                                    minWidth: 71,
                                    color: Color.fromRGBO(235,87,87,0.05),
                                    child: Text('Remove',
                                      style: TextStyle(color: Color.fromRGBO(235,87,87,1),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ) ,
                                    ),
                                    onPressed: (){},
                                    shape: new RoundedRectangleBorder(
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
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 220,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 500,
                      height: 100,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.8,-0.3),
                            child:Text("Pick-up and Drop-off Details",
                              style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                                alignment: Alignment(-0.93,0.7),
                                child:SvgPicture.asset('assets/images/Group18.svg'),

                          ),
                          Container(
                            alignment: Alignment(-0.49,0.79),
                            child:Text("Maruti Suzuki Ciaz (GJ18 AJ 1840)",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.93,1.89),
                            child:SvgPicture.asset('assets/images/vec.svg'),
                          ),
                          Container(
                            alignment: Alignment(-0.20,2.55),
                            child:Text("1208, Phoenix, Near Commerce Six Roads,\nNavrangpura",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.93,3.1),
                                child:SvgPicture.asset('assets/images/Group90.svg'),

                          ),
                          Container(
                            alignment: Alignment(-0.71,3.2),
                            child:Text("09 Feb, 10-11 AM",
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
                  ],
                ),
              ),
              SizedBox(height: 10,),
               Container(
                height: 110,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment(-0.95,3.0),
                                child:Text("Apply Coupons",
                                  style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                    fontSize: 14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ) ,
                                ),
                              ),
                             //  Row(
                              //    mainAxisAlignment: MainAxisAlignment.end,
                              //    children: [
                              //      FlatButton(
                              //       onPressed: () {
                              //         Navigator.pushNamed(context, "YourRoute");
                              //       },
                              //       child: new Text("Apply",
                              //         style:TextStyle(
                              //           color: Color.fromRGBO(0,114,255,1),
                              //           fontSize: 14,
                              //           fontFamily: 'Mulish',
                              //           fontWeight: FontWeight.w700,
                              //         ),),
                              //        padding: EdgeInsets.only(top :30)
                              // ),
                              //    ],
                              //  ),

                              Container(
                                alignment: Alignment(-0.3,1.73),
                                child: Container(
                                 // padding: EdgeInsets.all(1.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(

                                              color: Color.fromRGBO(242,242,242,1)
                                          )
                                      )
                                  ),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top:20,left:5),
                                         // color: Colors.red,
                                          //alignment: Alignment(0.9,0.5),
                                          height: 51,
                                         width: 303,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Promo or Referral Code",
                                                hintStyle: TextStyle(
                                                  color: Color.fromRGBO(189,189,189,1),
                                                  fontSize: 14,
                                                  fontFamily: 'Mulish',
                                                  fontWeight: FontWeight.w400,
                                            ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                         // color: Colors.red,
                                          height: 51,
                                          width: 50,
                                          alignment: Alignment(-0.2,0.5),
                                          child: Text("Apply",
                                            style: TextStyle(color: Color.fromRGBO(0,114,255,1),
                                              fontSize: 14,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w700,
                                            ) ,),
                                        ),
                                      ],
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
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 260,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 500,
                      height: 100,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.85,-0.3),
                            child:Text("Your Bill Details",
                              style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.87,0.79),
                            child:Text("Periodic Service",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(0.88,0.79),
                            child:Text("₹2249",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.83,1.63),
                            child:Text("Engine Oil Replacement",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(0.88,1.63),
                            child:Text("₹149",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.80,2.53),
                            child:Text("Pick-up and Drop-off Charges",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(0.88,2.53),
                            child:Text("₹149",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.86,3.39),
                            child:Text("Convenience Fee",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(0.88,3.39),
                            child:Text("₹149",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.87,4.25),
                            child:Text("Total Payable",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish-Bold.ttf',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(0.88,4.25),
                            child:Text("₹2398",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish-Bold.ttf',
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
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 260,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 500,
                      height: 100,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.85,-0.3),
                            child:Text("Payment Methods",
                              style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(0.0,1.5),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: _checkbox,
                                    onChanged: (value){
                                      setState(() {
                                    _checkbox = !_checkbox;
                                  });
                                    },
                                    ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.75,0.9),
                            child: Text("Pay Online",style: TextStyle(
                              color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),),
                          ),

                          Container(
                            alignment: Alignment(-0.20,1.85),
                            child: Text("Pay via secure payment gateway using Debit Cards,\nCredit Cards, Wallets, or UPI.",style: TextStyle(
                              color: Color.fromRGBO(130,130,130,1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                            ),),
                          ),
                          Container(
                            alignment: Alignment(0.0,4.60),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: _checkbox1,
                                  onChanged: (value){
                                    setState(() {
                                      _checkbox1 = !_checkbox1;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.72,2.90),
                            child: Text("Pay on Delivery",style: TextStyle(
                              color: Color.fromRGBO(51,51,51,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),),
                          ),
                          Container(
                            alignment: Alignment(-0.70,3.3),
                            child: Text("Pay cash on delivery.",style: TextStyle(
                              color: Color.fromRGBO(130,130,130,1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                            ),),
                          ),
                          Container(
                            alignment: Alignment(-0.75,3.8),
                            child: Text("Unavailable",style: TextStyle(
                              color: Color.fromRGBO(235,87,87,1),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                            ),),
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
          Stack(
            children: <Widget>[
              Positioned(
                bottom: 5,
                left: 2,
                right: 10,
                child:  GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Confirmorder()));
                  },
                  child: Container(
                    height: 58,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 197, 102, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                          child: Stack(children: <Widget>[
                            Positioned(
                              child: Container(
                                  color: Color.fromRGBO(0, 197, 102, 1),
                                  height: 200,
                                  alignment: Alignment(-0.85, -0.5),
                                  child: Text("₹2249", style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontSize: 16,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w800,
                                  ),
                                  )
                              ),

                            ),
                            Container(
                              alignment: Alignment(-0.85, 0.5),
                              child: Text("2 services", style: TextStyle(
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
                          ],)
                      ),
                    ),
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
