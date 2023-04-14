import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

final authRepositoryPrivoder = Provider(
  (ref) => AuthRepository(
    googleSignIn: GoogleSignIn()
    ),
  ); // Provider


class AuthRepository{
  final GoogleSignIn _googleSignIn;
  AuthRepository({
    required GoogleSignIn googleSignIn,
  }): _googleSignIn = googleSignIn;

  void signInWithGoogle() async{
    try{
      final user = await _googleSignIn.signIn();
      if(user!=null){
        print(user.email);
        print(user.displayName);
        print(user.photoUrl);

      }

    } catch (e){
      print(e);
    }
  }


  
}

