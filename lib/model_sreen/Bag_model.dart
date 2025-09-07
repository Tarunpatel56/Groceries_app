class Bagmodel {
    Bagmodel({
        required this.image,
        required this.title,
        required this.discount,
        required this.price,
    });

    final String? image;
    final String? title;
    final String? discount;
    final String? price;

    factory Bagmodel.fromJson(Map<String, dynamic> json){ 
        return Bagmodel(
            image: json["image"],
            title: json["title"],
            discount: json["discount"],
            price: json["price"],
        );
    }

}
 List userBag = [
  {
    "image": "assets/Rectangle1.png",
    "title": "Rice Bag 10kg",
    "discount": "10%",
    "price": "₹550"
  },
  {
    "image": "assets/Rectangle2.png",
    "title": "Wheat Flour 5kg",
    "discount": "5%",
    "price": "₹220"
   },
  // {
  //   "image": "https://img.freepik.com/free-photo/sugar-bag.jpg",
  //   "title": "Sugar Bag 5kg",
  //   "discount": "8%",
  //   "price": "₹190"
  // },
  // {
  //   "image": "https://img.freepik.com/free-photo/lentils-dal-bag.jpg",
  //   "title": "Pulses (Dal) 2kg",
  //   "discount": "12%",
  //   "price": "₹240"
  // },
  // {
  //   "image": "https://img.freepik.com/free-photo/flour-bag.jpg",
  //   "title": "Atta Chakki Fresh 10kg",
  //   "discount": "15%",
  //   "price": "₹460"
  // },
  // {
  //   "image": "https://img.freepik.com/free-photo/basmati-rice-bag.jpg",
  //   "title": "Basmati Rice 5kg",
  //   "discount": "20%",
  //   "price": "₹780"
  // },
  // {
  //   "image": "https://img.freepik.com/free-photo/salt-bag.jpg",
  //   "title": "Salt Bag 2kg",
  //   "discount": "5%",
  //   "price": "₹60"
  // },
  // {
  //   "image": "https://img.freepik.com/free-photo/groundnut-oil.jpg",
  //   "title": "Groundnut Oil 5L",
  //   "discount": "10%",
  //   "price": "₹1150"
  // },
  // {
  //   "image": "https://img.freepik.com/free-photo/tea-bag.jpg",
  //   "title": "Tea Leaves Pack 1kg",
  //   "discount": "18%",
  //   "price": "₹430"
  // },
  // {
  //   "image": "https://img.freepik.com/free-photo/milk-powder.jpg",
  //   "title": "Milk Powder 1kg",
  //   "discount": "12%",
  //   "price": "₹350"
  // }
];
