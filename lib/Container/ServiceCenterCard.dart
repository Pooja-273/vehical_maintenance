import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/cardetail.dart';
import 'package:vehical_maintenance/viewall.dart';

class ServiceCenterCard extends StatefulWidget {
  final String image, title,star,rating,location,area,pickup,managedby,price,subcategories;

  const ServiceCenterCard({Key key, this.image,this.title,this.star, this.rating, this.location, this.area, this.pickup, this.managedby,this.price,this.subcategories})
      : super(key: key);
  @override
  _ServiceCenterCardState createState() => _ServiceCenterCardState();
}

class _ServiceCenterCardState extends State<ServiceCenterCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 220,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              // alignment: Alignment.topLeft,
              child: Container(
                height: 40,
                padding: EdgeInsets.only(left:5.0,top:1),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(242,242,242,1)
                    ),
                  ),
                ),
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Color.fromRGBO(189,189,189,1),size: 20,),
                      hintText: "Search ",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(189,189,189,1),
                          fontSize:14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600),
                      border: InputBorder.none
                  ),
                ),
              ),
            ),
          ),
          Container(
            // height: 700,
            alignment: Alignment(-0.80,-0.2),
            child:Text("Available Service Centers",
              style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                fontSize: 14,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ) ,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => CarDetail()));
            },
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment(-0.9,0.9),
                      image:AssetImage('assets/images/Frame7.png',
                      ),
                    ),

                  ),
                ),
                Container(
                  alignment: Alignment(-0.15,0.2),
                  child:Text(widget.title,
                    style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                    ) ,
                  ),
                ),
                Container(
                  alignment: Alignment(0.25,0.2),
                  child:SvgPicture.asset('assets/images/Vector.svg'),

                ),
                Container(
                  alignment: Alignment(0.36,0.2),
                  child:SvgPicture.asset('assets/images/flat.svg'),

                ),
                Stack(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(left:325.0,top:125),
                        child: SvgPicture.asset(widget.star),
                      ),
                      Align(
                        child: Text(widget.rating,
                          style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ) ,
                        ),
                        alignment: Alignment(0.85,0.22),
                      ),

                    ]
                ),
                Container(
                  //height:80,
                  alignment: Alignment(-0.36,0.40),
                  child:SvgPicture.asset(widget.location),
                ),
                Container(
                  alignment: Alignment(-0.22,0.41),
                  child: Text(widget.area,
                    style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                    ) ,
                  ),
                ),
                Container(
                  child: Text(widget.pickup,
                    style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                      fontSize: 10,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w400,
                    ) ,
                  ),
                  alignment:Alignment(-0.20,0.7),
                ),
                Container(
                  child: Text(widget.price,
                    style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                      fontSize: 12,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                    ) ,
                  ),
                  alignment:Alignment(-0.31,0.90),
                ),
                Container(
                  child: Text(widget.managedby,
                    style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                      fontSize: 10,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w400,
                    ) ,
                  ),
                  alignment:Alignment(0.39,0.7),
                ),
                Container(
                  child: Text(widget.subcategories,
                    style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                      fontSize: 12,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                    ) ,
                  ),
                  alignment:Alignment(0.56,0.89),
                ),
                Container(
                  child: Text("Reviews",
                    style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                      fontSize: 11,
                      decoration: TextDecoration.underline,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                    ) ,
                  ),
                  alignment:Alignment(0.90,0.45),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }
}
