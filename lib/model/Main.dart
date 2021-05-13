// class Main{
//   final String image;
//
//   Main(this.image);
// }

class Main {

  String image;


  Main({this.image});

  factory Main.fromJson(Map<String, dynamic> json) =>
      Main(image: json['image'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;

    return data;
  }
}
