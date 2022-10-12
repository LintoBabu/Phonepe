import 'package:flutter/material.dart';
import 'package:phonepenew/loginPage.dart';

void main(){
  runApp(const phonepe());
}
class phonepe extends StatelessWidget {
  const phonepe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage()
    );
  }
}
