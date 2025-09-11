import 'package:flutter/material.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20,),
          Align(alignment: Alignment.topLeft,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,))),
             
             SizedBox(height: 40,),
             Center(child: Text("Sign Up",style: TextStyle(fontSize: 24,color: Colors.white),)),
             Center(child: Text("Please Sign up to get started",style: TextStyle(fontSize: 20,color: Colors.white),)),
        SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),
        Container(
          height: MediaQuery.sizeOf(context).height*0.7,
          width:  MediaQuery.sizeOf(context).width*10, 
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
            Align(alignment: Alignment.bottomLeft,
              child: Text("Name")),
            TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),
              
              hint: Text("John")),
            ),
             SizedBox(height: 10,),
         Align(alignment: Alignment.bottomLeft,
              child: Text("Email")),
               TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),
              hint: Text("example@gmail.com")),
            ),
             SizedBox(height: 10,),
         Align(alignment: Alignment.bottomLeft,
              child: Text("Password")),
                TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),
              hint: Text("example@gmail.com")),
            ),
             SizedBox(height: 10,),
          Align(alignment: Alignment.bottomLeft,
              child: Text("Re-Password")),
                TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),
              hint: Text("example@gmail.com")),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.1 ,),
            SizedBox(width:  MediaQuery.sizeOf(context).width*7, 
            height: 50,
              child: ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.green, shape:BeveledRectangleBorder(borderRadius: BorderRadiusGeometry.circular(5))) , child:Text("Sign up",style: TextStyle(fontSize: 15,color: Colors.white),)))
          
          ],),
        ),
        )
        ],),
      ),
    );
  }
}