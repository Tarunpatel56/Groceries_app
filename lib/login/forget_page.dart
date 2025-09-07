import 'package:flutter/material.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 40,),
          Align(alignment: Alignment.bottomLeft,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back))),
            SizedBox(height: 40,),
          Text("Forgot Password",style: TextStyle(fontSize: 25),),
          Text("please sign in to your existing account ",style: TextStyle(fontSize: 18),),
          SizedBox(height: 80,),
        
        
          Container(    height: MediaQuery.sizeOf(context).height * 0.7,
                width: MediaQuery.sizeOf(context).width * 10,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("Email"),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hint: Text("example@gmail.com"),
                          ),
                        ),
                        SizedBox(height: 40,),
                         SizedBox(
                          width: 380,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(5),
                              ),
                            ),
                            child: Text(
                              "Send Code",
                              style: TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                ],
              ),
            ),)
        
        
        ],),
      ),


    );
  }
}