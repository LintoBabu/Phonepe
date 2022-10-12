import 'package:flutter/material.dart';
import 'package:phonepenew/main.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Color.fromRGBO(33, 24, 43, 10),
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "images/phonepe.png",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Enter your mobile number",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "To use UPI, please enter the mobile number linked\nto your bank account",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 20),
              TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                  hintText: "Enter Your Mobile Number",
                  hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 1),
                      borderRadius: BorderRadius.zero),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.purple, width: 1)),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                child: FittedBox(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "By proceeding,You are agreeing to PhonePe's ",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                          text: "Terms & Condition",
                          style: TextStyle(color: Colors.blue)),
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 300,
                    color: Colors.purple,
                    alignment: Alignment.center,
                    child: Text(
                      "PROCCED",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
