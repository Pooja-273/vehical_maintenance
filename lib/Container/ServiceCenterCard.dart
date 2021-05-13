import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return Column(
      children:<Widget>[
                Container(


                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0,left: 0),
                        child: Image.asset(widget.image,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:8.0,left:0),
                        child: Text(widget.title,
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ) ,
                        ),
                      ),

                      // SvgPicture.asset(widget.star),
                      // Text(widget.rating),
                      // SvgPicture.asset(widget.location),
                      // Text(widget.area),
                      // Text(widget.pickup),
                      // Text(widget.managedby),
                      // Text(widget.price),
                      // Text(widget.subcategories),


                    ],
                  ),
                ),



              ],

    );
  }
}
