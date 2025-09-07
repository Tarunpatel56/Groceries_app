import 'package:flutter/material.dart';
import 'package:groceries/home_screen/fruitlistmodel.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
    bool isLoading = true;
  final List<Fruitmodel> fruitItemList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() {
    isLoading = true;
    for (var list in Items) {
      fruitItemList.add(Fruitmodel.fromJson(list));
    }
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
      ),
      body: Column(children: [
        Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: categoryItems.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6,

                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return _fruitlist(fruitItemList[index]);
              },
            ),
          ),
      ],),
    );
  }Widget _fruitlist(Fruitmodel data) {
    return Expanded(
      child: Card(
        child: Center(
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.4,
            width: MediaQuery.sizeOf(context).width * 0.4, 
            child: Center(
              child: Column(
                children: [Image.asset(data.image ?? ''), Text(data.name ?? '')],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

