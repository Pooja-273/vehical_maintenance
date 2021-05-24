import 'dart:convert';

import 'package:flutter/foundation.dart';

class IntroModel{
   String logo;
   String heading;
   String title;
   String phone;
   String name;
   String verificationId;

  IntroModel(this.logo,this.heading,this.title,this.phone,this.name,this.verificationId);

  // factory IntroModel.fromJson(Map<String, dynamic> json) =>
  //     IntroModel(logo: json['logo'],
  //             heading: json['heading'],
  //             title: json['title'],
  //             mobno: json['mobno'],
  //             name: json['name']
  // );
  // Map<String,dynamic> toJson(){
  //   final Map<String,dynamic> data = new Map<String,dynamic>();
  //   data['logo'] = this.logo;
  //   data['heading'] = this.heading;
  //   data['title'] = this.title;
  //   data['mobno'] = this.mobno;
  //   data['name'] = this.name;
  //   return data;
  // }
}