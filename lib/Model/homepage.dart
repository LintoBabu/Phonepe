import 'package:flutter/material.dart';
import 'package:phonepenew/Model/loginModel.dart';

class homepage extends StatefulWidget {
  final loginModel? loginModeler;

  const homepage({Key? key, this.loginModeler}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String? userName;
  int? accountBalance;

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
            Text(accountBalance.toString())
          ],
        ),
      ),
    );
  }
}
