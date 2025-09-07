class Fruitmodel {
  Fruitmodel({required this.image, required this.name});

  final String? image;
  final String? name;

  factory Fruitmodel.fromJson(Map<String, dynamic> json) {
    return Fruitmodel(image: json["image"], name: json["name"]);
  }

}


  List categoryItems  = [
    {"image": "assets/home1.png", "name": "Fruits & Vegetables"},
    {"image": "assets/home2.png", "name": "Breakfast"},
    {"image": "assets/home3.png", "name": "Beverages"},
    {"image": "assets/home4.png", "name": "Meat & Fish"},
    {"image": "assets/home5.png", "name": "Snacks"},
    {"image": "assets/home6.png", "name": "Dairy"},
  ];
  List Items  = [
    {"image": "assets/image1.png", "name": "Fruits & Vegetables"},
    {"image": "assets/image2.png", "name": "Breakfast"},
    {"image": "assets/image3.png", "name": "Beverages"},
    {"image": "assets/image4.png", "name": "Meat & Fish"},
    {"image": "assets/image5.png", "name": "Snacks"},
    {"image": "assets/image6.png", "name": "Dairy"},
  ];