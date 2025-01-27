import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahara_homepage/Homescreen.dart';
import 'package:sahara_homepage/main.dart';

class signinpage extends StatelessWidget {
  const signinpage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.teal),
            ),
            Text('Enter your credentials to signin'),
            SizedBox(
              height: 15,
            ),
            buildtextfield('enter email', emailcontroller, Icons.email),
            buildtextfield('enter password', passwordcontroller, Icons.lock),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade400,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Text(
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
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
    child: TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: hinttext,
          suffixIcon: Icon(suffixicon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )),
    ),
  );
}
