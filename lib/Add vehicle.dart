import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/vehicle.dart';

class addvehicle extends StatefulWidget {

  @override
  _addvehicleState createState() => _addvehicleState();
}

class _addvehicleState extends State<addvehicle> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Align(
              alignment:Alignment(-1.2,-0.1),
              child:Text("Vehicles",
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.black,),
              ),
            ),

        actions: <Widget>[
          new Container(
            child: Stack(
                children:[
                  Align(
                    // alignment:Alignment(0.0,0.0),
                    child: TextButton(
                      onPressed:(){
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => _buildDialog(context),
                        );
                      },
                      child:Text(
                      'Add Vehicle',
                      style: new TextStyle(
                        //height:2.6,
                        fontSize: 15.0,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(0,114,255,1),
                      ),
                    ),
                  ),
                  ),
                ],
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
              height: 150,
                child:Column(children: <Widget>[
                  Container(
                    width: 500,
                    height: 150,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Vehicles()));
                      },
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment(-0.9,-0.6),
                            child:Text("Primary",style:
                            TextStyle(
                              color: Color.fromRGBO(130,130,130,1),
                              fontSize:14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.37,0.10),
                            child:Text("Maruti Suzuki Ciaz",
                              style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                          Container(
                              child:SvgPicture.asset('assets/images/Group177.svg'),
                            alignment: Alignment(-0.85,0.23),
                          ),
                          Container(
                            child:Text("GJ-18-AJ-1840",
                              style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),
                            alignment: Alignment(-0.45,0.40),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:300,top:70),
                                  child: FlatButton(
                                    height: 35,
                                    minWidth: 71,
                                    color: Color.fromRGBO(235,87,87,0.05),
                                    child: Text('Delete',
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
                                )
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
                height: 260,
                child: Stack(
                  children: [
                    Align(
                alignment: Alignment(-0.9,-0.8),
                    child:Text("All Vehicles",style:
                      TextStyle(
                        color: Color.fromRGBO(130,130,130,1),
                        fontSize:14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),
                     Align(
                       alignment:Alignment(0.80,-0.8),
                        child: Text("Tap a vehicle to make it Primary",
                          style:
                          TextStyle(
                            color: Color.fromRGBO(130,130,130,1),
                            fontSize:12,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                     ),
                    Container(
                      alignment: Alignment(-0.30,-0.12),
                      child:Text("GJ-18-AJ-1840",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(-0.8,-0.23),
                      // height:100,
                      child:SvgPicture.asset('assets/images/Scooter.svg'),),
                    Container(
                     alignment: Alignment(-0.3,-0.30),
                       child: Text("Honda Activa",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ) ,
                        ),
              ),

                    Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:300,top:80),
                            child: FlatButton(
                              height: 35,
                              minWidth: 71,
                              color: Color.fromRGBO(235,87,87,0.05),
                              child: Text('Delete',
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
                      alignment: Alignment(-0.32,0.63),
                      child:Text("GJ-18-AJ-1840",
                        style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                    Container(
                      alignment: Alignment(-0.8,0.40),
                      child:SvgPicture.asset('assets/images/bike.svg'),),
                    Container(
                      alignment: Alignment(-0.2,0.40),
                      child: Text("Mercedes Benz AMZ\nGTX100",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ) ,
                        ),
                      ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:300,top:170),
                            child: FlatButton(
                              height: 35,
                              minWidth: 71,
                              color: Color.fromRGBO(235,87,87,0.05),
                              child: Text('Delete',
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
            Center(
              child: Container(
                margin: EdgeInsets.only(top:60.0),
                height: 45,
                width: 183.33,
                child :RaisedButton(
                  child: Text("Add New Vehicle",
                    style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                    ) ,),
                  //elevation: 6.0,
                  onPressed: (){
                    showDialog(
                    context: context,
                    builder: (BuildContext context) => _buildDialog(context),
                  );
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

      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //       color: Colors.grey,
      //       boxShadow: [
      //         BoxShadow(
      //             color: Colors.grey
      //         )
      //       ]
      //   ),
      //   child: SizedBox(
      //     height: 65,
      //     child: BottomNavigationBar(
      //       backgroundColor: Color.fromRGBO(255,255,255,1),
      //       type: BottomNavigationBarType.fixed,
      //       items: <BottomNavigationBarItem>[
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/seting.svg'),
      //           label: 'Service',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/sos1.svg'),
      //           label: 'Emergency',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Container(
      //             height: 25,
      //               child: SvgPicture.asset('assets/images/Group175.svg')),
      //           label: 'Vehicles',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/account.svg'),
      //           label: 'Account',
      //         ),
      //
      //       ],
      //       currentIndex: _selectedIndex,
      //       selectedItemColor: Colors.blue[800],
      //       onTap: _onItemTapped,
      //       elevation: 4,
      //
      //     ),
      //   ),
      // ),
    );
  }
}


Widget _buildDialog(BuildContext context) {
  return Dialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)),
    child: Container(
      height: 346.0,
      width: 345.0,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 400,
              child: Text('Add New Vehicle',style:TextStyle(color: Color.fromRGBO(0,0,0,1),
                fontSize: 16,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
              ),),alignment: Alignment(-0.98,0.0),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom:10.0,top:10,left:20,right:20),
            child: new Expanded(
                child: new TextField(
                  decoration: new InputDecoration(
                    // contentPadding: new EdgeInsets.all(8),
                    hintText: 'Enter a Model (Example "Activa")',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color:Color.fromRGBO(242, 242, 242, 1))),
                    hintStyle: new TextStyle(
                      color: Color.fromRGBO(189, 189, 189, 1),
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w400,
                    ) ,
                  ),
                ),
              ),
            ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom:10.0,top:15,left:20,right:20),
              child: TextField(
                decoration: new InputDecoration(
                  hintText: 'Registration Number',
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Color.fromRGBO(242, 242, 242, 1))),
                   hintStyle: new TextStyle(color: Color.fromRGBO(189, 189, 189, 1),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                  ) ,

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Container(
                //margin: EdgeInsets.only(top:90.0),
                height: 40,
                width: 183.33,
                child :RaisedButton(
                  child: Text("Add Vehicle",
                    style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                    ) ,),
                  //elevation: 6.0,
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _buildPopupDialog(context),
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
  );
}
Widget _buildPopupDialog(BuildContext context) {
  return Dialog(
    backgroundColor: Colors.transparent,
    insetPadding: EdgeInsets.all(10),
    child: Stack(
      overflow: Overflow.visible,
      //alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 292,
          height: 170,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Colors.white),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment(-0.10,0.7),
                child: Text("Honda Activa",
                  style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                  ) ,
                ),
              ),
              Container(
                alignment: Alignment(0.63,0.5),
                child: Text("Honda Activa i",
                  style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                  ) ,
                ),
              ),
              Container(
                alignment: Alignment(0.63,0.5),
                child: Text("Honda Activa 4G",
                  style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                  ) ,
                ),
              ),
              Container(
                alignment: Alignment(0.63,0.5),
                child: Text("Honda Activa 5G",
                  style: TextStyle(color: Color.fromRGBO(33,33,33,1),
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
  );
}

