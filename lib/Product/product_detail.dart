import 'package:flutter/material.dart';
import 'package:groceries/model_sreen/Bag_model.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isLoading = true;
  final List<Bagmodel> UserBagList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  loaddata() {
    isLoading = true;
    for (var List in userBag) {
      UserBagList.add(Bagmodel.fromJson(List));
    }
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  child:
                      Image.asset("assets/Rectangle7.png") ??
                      Image.asset("assets/Rectangle33.png"),
                ),
              ),
              Row(
                children: [
                  Image.asset("assets/Rectangle32.png"),
                  SizedBox(width: 10),
                  Image.asset("assets/Rectangle33.png"),
                ],
              ),
              Text(
                "Arla DANO Full Cream Milk Powder Instant",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text("1 KG", style: TextStyle(fontSize: 20)),
                  Spacer(),
                  Text("৳182", style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.filter_list_outlined),
                  SizedBox(width: 10),
                  Text("Dairy Products", style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.list_rounded, size: 30),
                  SizedBox(width: 10),
                  Text(
                    "Et quidem faciunt, ut summum \nbonum sit extremum et rationibus \nconquisitis de voluptate. Sed \nut summum bonum sit id,",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "You can also check this items",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 15),
              ListView.separated(
                itemBuilder: (context, index) {
                  return _userbaglist(UserBagList[index]);
                },
                separatorBuilder: (context, index) => SizedBox(),
          
                itemCount: userBag.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
              ),
              BottomAppBar(
                child: Align(alignment: Alignment.center,
                  child: SizedBox(width: 300,
                  height: 60,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 30,),
                      iconAlignment: IconAlignment.end,
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      label: Text("Add to Bag",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _userbaglist(Bagmodel data) {
  return Expanded(
    child: Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              child: Image.asset(data.image ?? '', fit: BoxFit.fill),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.title ?? '', style: TextStyle(fontSize: 20)),
                Text(data.discount ?? '', style: TextStyle(fontSize: 20)),
                Text(data.price ?? '', style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
