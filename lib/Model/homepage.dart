import 'package:flutter/material.dart';
import 'package:phonepenew/Model/loginModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage extends StatefulWidget {
  final loginModel? loginModeler;

  const homepage({Key? key, this.loginModeler}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String? userName;
  int? accountBalance;
  String? number = "";
  String? password = "";

  void getuserdata() async {
    SharedPreferences objshared = await SharedPreferences.getInstance();
    setState(() {
      number = objshared.getString("username");
      password = objshared.getString("password");
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName = widget.loginModeler!.data!.username;
    accountBalance = widget.loginModeler!.data!.accountBalance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName!),
      ),
      body: Container(
        child: Column(
          children: [
            Text(accountBalance.toString()),
            Text(number!),
            GestureDetector(
              onTap: () {
                getuserdata();
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
