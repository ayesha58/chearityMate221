


import 'package:flutter/material.dart';
import 'package:sahara_homepage/Homescreen.dart';
import 'package:sahara_homepage/auth_service.dart';
import 'package:sahara_homepage/signinpage.dart';


class SignUpPage extends StatelessWidget {
  final _auth=Authservice();
 final TextEditingController emailController =TextEditingController();
  final TextEditingController usernameController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController confirmpasswordController=TextEditingController();
  void dispose(){
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Create your account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),
                // Username Field
                TextField(obscureText: true,
                  controller:usernameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: 'Username',
                    filled: true,
                    fillColor: Colors.grey[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Email Field
                TextField(obscureText: true,
                  controller: emailController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    hintText: 'Email',
                    filled: true,
                    fillColor: Colors.grey[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Password Field
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.grey[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Confirm Password Field
                TextField(
                  controller: confirmpasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Confirm Password',
                    filled: true,
                    fillColor: Colors.grey[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // Sign Up Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: ()async{
                      String email= emailController.text.toString();
                      String pass=passwordController.text;
                      final user=await _auth.createUserWithEmailAndPassword(email, pass);
                      if(user!=null){
                        print("user created succesfully");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=>  const Homepage(),
                            )
                        );

                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(fontSize: 16,
                          color: Colors.green),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Or', style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 16),
                // Sign in with Google Button

                const SizedBox(height: 24),
                // Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account? '),
                    GestureDetector(
                      onTap: () {
                        print("username:${usernameController.text}");
                        print("email${emailController}");
                        print("password${passwordController.text}");
                        print("confirmpassword${confirmpasswordController.text}");

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  SignInPage()),
                        );
                        // Navigate to login screen
                      },
                      child: const Text(
                        'Signin',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ]

            ),
          ),

        ),
      ),
    );
  }
}
