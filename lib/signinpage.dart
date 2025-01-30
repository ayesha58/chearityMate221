import 'package:flutter/cupertino.dart';
import 'package:sahara_homepage/auth_service.dart';
import 'package:sahara_homepage/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sahara_homepage/Homescreen.dart';
//import 'package:sahara_homepage/Homescreen.dart';
import 'package:sahara_homepage/main.dart';
//import 'package:sahara_homepage/signup%20page.dart';

class SignInPage extends StatelessWidget {
  //final FirebaseServices _auth=FirebaseServices();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  void dispose(){
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.teal),
            ),
            const Text('Enter your credentials to signin'),
            const SizedBox(
              height: 15,
            ),
            buildtextfield('enter email', emailcontroller, Icons.email),
            buildtextfield('enter password', passwordcontroller, Icons.lock),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade400,
                ),
                onPressed:() {
                  // Handle signup logic here

                  print('email: ${emailcontroller.text}');
                  print('Password: ${passwordcontroller.text}');
                  // print('Date of Birth: $selectedDate');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage(),
                  ),
                  );
                },
                child: const Text(
                  '          Signin          ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}

Widget buildtextfield(
    String hinttext, TextEditingController controller, IconData suffixicon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
    child: TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: hinttext,
          suffixIcon: Icon(suffixicon),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )),
    ),

  );
}
