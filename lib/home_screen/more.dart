

import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("More")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(maxRadius: 30,
                backgroundImage: NetworkImage("https://picsum.photos/200",),
              ),
              title: Text("Shafikul Islam",style: TextStyle(fontSize: 25),),
        
              subtitle: Text("01XXXXXXXXXXXX"),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.edit,size: 35,color: Colors.blue,),
                SizedBox(width: 20),
                Text("Edit Profile",style: TextStyle(fontSize: 25),),
              ],
            ),    SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.location_on_outlined,size: 35,),
                SizedBox(width: 20),
                Text("My Address",style: TextStyle(fontSize: 25),),
              ],
            ),    SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.shopping_basket_outlined,size: 35,),
                SizedBox(width: 20),
                Text("My Orders",style: TextStyle(fontSize: 25),),
              ],
            ),    SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.shopping_bag_outlined,size: 35,),
                SizedBox(width: 20),
                Text("My Wishlist",style: TextStyle(fontSize: 25),),
              ],
            ),    SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.chat_bubble_outline,size: 35,color: Colors.green,),
                SizedBox(width: 20),
                Text("Chat with us",style: TextStyle(fontSize: 25),),
              ],
            ),    SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.call,size: 35,color: Colors.red,),
                SizedBox(width: 20),
                Text("Talk to our Support",style: TextStyle(fontSize: 25),),
              ],
            ),    SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.mail_outline,size: 35,),
                SizedBox(width: 20),
                Text("Mail to us",style: TextStyle(fontSize: 25),),
              ],
            ),    SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.facebook,size: 35,color: Colors.blue,),
                SizedBox(width: 20),
                Text("Message to facebook page",style: TextStyle(fontSize: 25),),
              ],
            ), 
            SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.power_settings_new_outlined,size: 35,color: Colors.red,),
                SizedBox(width: 20),
                Text("Log out",style: TextStyle(fontSize: 25),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
