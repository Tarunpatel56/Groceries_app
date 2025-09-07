import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:groceries/model_sreen/Bag_model.dart';

class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  // ignore: non_constant_identifier_names

  int quantity = 0;
  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decreaseQuantity() {
    setState(() {
      bool qunatity(int value) {
        if (quantity-- <= 0) {
          return true;
        } else {
          return false;
        }
      }
    });
  }

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
      appBar: AppBar(title: Text("My Bag", style: TextStyle(fontSize: 25))),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Products"),
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
              ElevatedButton(onPressed: (){}, child:Text("Add More Product") )
          ],
        ),
      ),
    );
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
                height: MediaQuery.sizeOf(context).height * 0.2,
                width: MediaQuery.sizeOf(context).width * 0.4,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("QUT 1", style: TextStyle(fontSize: 20)),
                      IconButton(
                        onPressed: () {
                          decreaseQuantity();
                        },
                        icon: Icon(Icons.remove, color: Colors.red),
                      ),
                      Text(
                        '$quantity',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          increaseQuantity();
                        },
                        icon: Icon(Icons.add, color: Colors.green),
                      ),
                    ],
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
