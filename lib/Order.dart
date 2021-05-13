import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}
class _OrderState extends State<Order > {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
     ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Stack(
          children:[
            Align(
              alignment:Alignment(-1.2,-0.1),
              child:Text("Orders",
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.black,),
              ),
            ),
          ],
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back,color: Colors.black),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      backgroundColor: Color.fromRGBO(246, 251, 255,1),
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(),
                  Column(children: <Widget>[
                      Container(
                          width: 500,
                          height: 400,
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment(-0.06,0.2),
                                child:SvgPicture.asset('assets/images/Group189.svg'),
                              ),
                              Container(
                               // color: Colors.red,
                                alignment: Alignment(-0.01,0.50),
                                child:Text("No Orders Yet",
                                  style: TextStyle(color: Color.fromRGBO(182,205,238,1),
                                    fontSize: 14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                  ) ,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:350),
                                child: Container(
                                  child: Center(
                                    child: Container(
                                      height: 45,
                                      width: 231,
                                      child :RaisedButton(
                                        child: Text("View Available Services",
                                          style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                                            fontSize: 14,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w800,
                                          ) ,),
                                        //elevation: 6.0,
                                        onPressed: (){

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
                        ),
                  ],
                    ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top:3.0),
                  //   child: Container(
                  //     child: Center(
                  //       child: Container(
                  //         margin: EdgeInsets.only(bottom:05),
                  //         height: 45,
                  //         width: 231,
                  //         child :RaisedButton(
                  //           child: Text("View Available Services",
                  //             style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                  //               fontSize: 14,
                  //               fontFamily: 'Mulish',
                  //               fontWeight: FontWeight.w800,
                  //             ) ,),
                  //           //elevation: 6.0,
                  //           onPressed: (){
                  //
                  //           },
                  //           shape: RoundedRectangleBorder(
                  //             borderRadius: new BorderRadius.circular(5.0),),
                  //           color: Color.fromRGBO(0,114,255,1),
                  //
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
        //child: _options.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey
              )
            ]
        ),
        child: SizedBox(
          height: 65,
          child: BottomNavigationBar(
            backgroundColor: Color.fromRGBO(255,255,255,1),
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/seting.svg'),
                label: 'Service',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/sos1.svg'),
                label: 'Emergency',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    height: 25,
                    child: SvgPicture.asset('assets/images/Group175.svg')),
                label: 'Vehicles',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/account.svg'),
                label: 'Account',
              ),

            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue[800],
            onTap: _onItemTapped,
            elevation: 4,

          ),
        ),
      ),
    );
  }
}
