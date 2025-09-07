
import 'package:flutter/material.dart';
import 'package:groceries/home_screen/fruitlistmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    for (var list in categoryItems) {
      fruitItemList.add(Fruitmodel.fromJson(list));
    }
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grocery Plus"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      
      body: Column(
        children: [
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(Icons.location_history_outlined, color: Colors.white),
            ),
            title: Text("Your Location"),
            subtitle: Text("32 Llanberis Close, Tonteg, CF38 1HR"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hint: Text("Search Anything"),
              prefixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(height: 10,),
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
        ],
      ),
    );
  }


  Widget _fruitlist(Fruitmodel data) {
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
