import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:groceries/home_screen/bottem_bar.dart';
import 'package:groceries/home_screen/home_screen.dart';
import 'package:groceries/login/forget_page.dart';
import 'package:groceries/login/sign_page.dart';
import 'package:groceries/model_sreen/user_model.dart';
import 'package:groceries/session/sp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool isChecked = false;
  final formKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
            Text("Log In", style: TextStyle(fontSize: 30, color: Colors.white)),
            Text(
              "Please sign in to your exiting account",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.7,
              width: MediaQuery.sizeOf(context).width * 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("Email"),
                      ),
                      TextFormField(
                        controller: emailcontroller,
                        validator: (value) {
                          if (value!.contains("@gmail.com") == false) {
                            return "please enter valid email";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hint: Text("example@gmail.com"),
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("Password"),
                      ),
                      TextFormField(
                        controller: passwordcontroller,

                        validator: (value) {
                          if (value!.length > 8 == false) {
                            return "please enter valid password";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hint: Text("password"),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),

                          Text("Remember Me", style: TextStyle(fontSize: 18)),
                          Spacer(),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgetPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Forget Password!",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      SizedBox(
                        width: 380,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate() == true) ;
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(5),
                            ),
                          ),
                          child: Text(
                            "Log In",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: " SIGN UP",
                              style: TextStyle(color: Colors.red),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignPage(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                      Text("OR"),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              googleLogin(context);
                            },
                            child: Container(
                              height: 65,
                              width: 65,
                              child: Image.asset("assets/21.webp"),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BottemBar(),
                                ),
                              );
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/logo.webp"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

googleLogin(context) async {
  const List<String> scopes = <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ];
  final GoogleSignIn signIn = GoogleSignIn.instance;

  await signIn.initialize(
    serverClientId:
        "391545280397-tmb5lqeah6edkvo64llhg2m7pbpcu3ub.apps.googleusercontent.com",
  );
  final GoogleSignInAccount? user = await signIn.authenticate(
    scopeHint: scopes,
  );

  print("==========================");

  print(user?.displayName);
  print(user?.photoUrl);
  print(user?.email);

  if (user == null) return;
  await saveDetailsOnDB(user.id, {
    "socialId": user.id,
    "name": user.displayName,
    "email": user.email,
    "image": user.photoUrl,
  });

  await SPref().saveUserData(
    UserModel.fromJson({
      "socialId": user.id,
      "name": user.displayName,
      "email": user.email,
      "image": user.photoUrl,
    }),
  );

  _navigateToLogin(context);
}

Future<void> saveDetailsOnDB(
  String socialId,
  Map<String, dynamic> userData,
) async {
  var _firebaseFirestore;
  final CollectionReference userCollection = _firebaseFirestore.collection(
    "users",
  );

  final query = await userCollection
      .where("socialId", isEqualTo: socialId)
      .get();

  if (query.docs.isEmpty) {
    await userCollection.add(userData);
  } else {
    await userCollection.doc(query.docs.first.id).update(userData);
  }
}

_navigateToLogin(context) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => BottemBar()),
    (route) {
      return false;
    },
  );
}
