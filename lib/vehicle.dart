import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Add%20vehicle.dart';


class Vehicles extends StatefulWidget {
  Vehicles ({Key key}) : super(key: key);
  @override
  _VehiclesState createState() => _VehiclesState();
}
class _VehiclesState extends State<Vehicles > {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: addvehicle',
      style: optionStyle,
    ),
    Text(
      'Index 3: Account',
      style: optionStyle,
    ),
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
          child:Text("Vehicles",
          style: TextStyle(
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w800,
            fontSize: 16,
              color: Colors.black,),
          ),
      ),
        ],
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
                        builder: (BuildContext context) => _buildPopupDialog(context),
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
                ]
            ),
            padding: EdgeInsets.only(left:0.0,right:19.0),
          )
        ],
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back,color: Colors.black),
              onPressed: ()=> Navigator.of(context).pop(),
        ),
        elevation: 0.1,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color.fromRGBO(246, 251, 255,1),
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 300,
                    padding: new EdgeInsets.only(top:120.0),
                    child: SvgPicture.asset('assets/images/Group189.svg'),

                  ),
                  Container(
                    height: 40,
                    width:150 ,
                    alignment: Alignment(0.05,-4.0),
                    child: Text('No Vehicles Added',
                        style: TextStyle(
                          fontSize:14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w800,
                          color:Color.fromRGBO(182,205,238,1),)),
                  ),
                  Center(
                    child: Container(
                      //margin: EdgeInsets.only(top:90.0),
                      height: 40,
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
          height: 71,
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

Widget _buildPopupDialog(BuildContext context) {
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
                  onPressed: (){},
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
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => addvehicle()));
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
