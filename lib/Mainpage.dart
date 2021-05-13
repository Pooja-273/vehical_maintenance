import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Container/CarCard.dart';
import 'package:vehical_maintenance/Container/ImageCard.dart';
import 'package:vehical_maintenance/model/ImageModel.dart';
import 'package:vehical_maintenance/viewall.dart';
import 'model/CarModel.dart';


class MainPage extends StatelessWidget {
  final List<CarModel> carlist = [
    CarModel(1, "General\nService", "Cars", "assets/images/frame7.png"),
    CarModel(2, "Car Wash", "Cars", "assets/images/Frame8.png"),
    CarModel(3, "Wheel\nAlignme..", "Cars", "assets/images/Frame9.png"),
    CarModel(4, "Car Spa", "Cars", "assets/images/Frame10.png"),
    CarModel(5, "General\nService", "Cars", "assets/images/frame7.png"),
    CarModel(6, "Car Wash", "Cars", "assets/images/Frame8.png"),
    CarModel(7, "Wheel\nAlignme..", "Cars", "assets/images/Frame9.png"),
    CarModel(8, "Car Spa", "Cars", "assets/images/Frame10.png"),

  ];
  final List<ImageModel> imagelist=[
    ImageModel("assets/images/main.png"),
    ImageModel("assets/images/main.png"),
    ImageModel("assets/images/main.png"),
  ];
  //const Car({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children:[
            Container(
              width: 150,
              // color:Colors.blue,
              alignment:Alignment(-1.0,-0.5),
              child: SvgPicture.asset('assets/images/blue.svg'),
            ),
            Container(
              alignment: Alignment(-0.83,-0.8),
              child:Text("Navrangpura",
                style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                ) ,
              ),
            ),
            Container(
              alignment:Alignment(1.07,-0.10),
              child:SvgPicture.asset('assets/images/Group75.svg'),
            ),
          ],
        ),
        actions: <Widget>[
          new Container(
            child: Align(
              child: Text('Ciaz',
                style: new TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(33,33,33,1),
                ),
              ),
            ),

            padding: EdgeInsets.only(left:0.0,right:19.0),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.40,
      ),
      backgroundColor: Color.fromRGBO(246,251,255,1),
      body : SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height:200 ,
              margin: const EdgeInsets.only(bottom:0.0,top: 0.0),
              padding:EdgeInsets.only(left: 10.0,top: 10) ,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: imagelist.length,
                  itemBuilder: (BuildContext contex,int  index)=>
                      ImageCard(image: imagelist[index].image)
              ),
            ),
            Container(
              height:170 ,
              margin: const EdgeInsets.only(bottom:10.0),
              padding:EdgeInsets.only(left: 15.0,top: 0) ,
              decoration: BoxDecoration(

                color: Colors.white ,
              ),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: carlist.length,
                  itemBuilder: (BuildContext contex,int  index)=>
                      CarCard(image: carlist[index].image,category: carlist[index].categories,title: carlist[index].title,)
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Viewall()));
              },
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                            flex:1,
                            child: Padding(
                              padding: const EdgeInsets.only(left :20.0),
                              child: Text("Car services",
                                style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                  fontSize: 18,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                ) ,),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right:7.0),
                          child: Container(
                            child: Expanded(
                              flex:1,
                              child: Text("View All",
                                style: new TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(130,130,130,1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:28.0),
                          child: Container(
                            child: SvgPicture.asset('assets/images/arrow.svg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left:20),
                          child: Expanded(
                            flex:2,
                            child:SvgPicture.asset('assets/images/car-repair.svg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            child: Text("General Service",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),

                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left:63),
                          child: Expanded(
                            flex:1,
                            child:SvgPicture.asset('assets/images/wash.svg'),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            child: Text("Car Wash",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 0),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left:20),
                          child: Expanded(
                            flex:2,
                            child:SvgPicture.asset('assets/images/spa.svg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            child: Text("Car Spa",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),

                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left:110),
                          child: Expanded(
                            flex:1,
                            child:SvgPicture.asset('assets/images/battery.svg'),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:13.0),
                          child: Container(
                            child: Text("Battery Issues",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),

                          ),
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:10,),
            GestureDetector(
              onTap: (){
              },
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                            flex:1,
                            child: Padding(
                              padding: const EdgeInsets.only(left :20.0),
                              child: Text("Motorcycle services",
                                style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                  fontSize: 18,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                ) ,),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right:7.0),
                          child: Container(
                            child: Expanded(
                              flex:1,
                              child: Text("View All",
                                style: new TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(130,130,130,1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:28.0),
                          child: Container(
                            child: SvgPicture.asset('assets/images/arrow.svg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left:20),
                          child: Expanded(
                            flex:2,
                            child:SvgPicture.asset('assets/images/repair1.svg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            child: Text("General Service",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),

                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left:63),
                          child: Expanded(
                            flex:1,
                            child:SvgPicture.asset('assets/images/wash.svg'),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            child: Text("Car Wash",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left:20),
                          child: Expanded(
                            flex:2,
                            child:SvgPicture.asset('assets/images/spa.svg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Container(
                            child: Text("Car Spa",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),

                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left:108),
                          child: Expanded(
                            flex:1,
                            child:SvgPicture.asset('assets/images/battery.svg'),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:13.0),
                          child: Container(
                            child: Text("Battery Issues",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ) ,
                            ),

                          ),
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:10,),
            GestureDetector(
              onTap: (){
              },
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                            flex:1,
                            child: Padding(
                              padding: const EdgeInsets.only(left :20.0,bottom:130),
                              child: Text("Refer Servicko and Earn",
                                style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                  fontSize: 18,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                ) ,),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right:28.0,bottom: 130),
                          child: Container(
                            child: SvgPicture.asset('assets/images/arrow.svg'),
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

    );
  }

}
