import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/viewall.dart';

class CarCard extends StatefulWidget {
  final String image, title, category,heading;

  const CarCard({Key key, this.image, this.title, this.category,this.heading})
      : super(key: key);

  @override
  _CarCardState createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            width: 100,
            child: Column(
              children: <Widget>[
                 Container(
                      child: Row(
                        children: <Widget>[
                          Image.asset(widget.image,fit: BoxFit.contain),
                        ],
                      ),
                    ),
              SizedBox(height: 5,),
                   Row(
                      children: [
                        Text(widget.title,style: TextStyle(
                          color: Color.fromRGBO(33, 33, 33, 1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ),),
                      ],
                    ),
                Row(
                    children: [
                      Text(widget.category,style: TextStyle(
                        color: Color.fromRGBO(130,130,130, 1),
                        fontSize: 12.55,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w700,
                      ),),
                    ],
                  ),

              ],
            )
          ),

        ],

    );
  }
}
