// ignore_for_file: empty_constructor_bodies, await_only_futures
import "../repository/auth_repository.dart";
import "package:flutter/material.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "../colors.dart";

class LoginScreen extends ConsumerWidget{
  const LoginScreen({Key? key}) : super(key: key);

  void signInWithGoogle(WidgetRef ref) {

    ref.read(authRepositoryPrivoder).signInWithGoogle();
  }
   
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authRepositoryPrivoder).signInWithGoogle;
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => signInWithGoogle(ref),
          icon: Image.asset(
            'assets/images/google_logo.png',
            height: 20,
          ),
          label: const Text(
            'Sign in with Google',
            style: TextStyle(
              color: kBlackColor,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: kWhiteColor,
            minimumSize: const Size(150, 50),
          ),
        ),
      ),
    );
  }
}
