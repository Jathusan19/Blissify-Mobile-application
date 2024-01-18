// ignore: unused_import
import 'package:flutter/material.dart';
import 'constants.dart';
import 'login_screen.dart';

void main(){
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:LoginScreen(),
      title:appName, 
      debugShowCheckedModeBanner: false,


    );
  }
}
