import 'package:firebase_auth/firebase_auth.dart';
class Authservice{
  final FirebaseAuth _auth=FirebaseAuth.instance;
  Future<User?> createUserWithEmailAndPassword(String email,String password)
  async{
    try{
    final cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return cred.user;
  }
  catch(e)
    {
      print("something went wrong");
      }
      return null;

  }
  //now its for sign in as well

  Future<User?> signinUserWithEmailAndPassword(String email,String password)
  async{
    try{
      final cred = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return cred.user;
    }
    catch(e)
    {
      print("something went wrong");
    }
    return null;

  }
  Future<void>signout()async{
    try{_auth.signOut();
  }catch(e){
      print("something went wrong");

    }
    }
}
