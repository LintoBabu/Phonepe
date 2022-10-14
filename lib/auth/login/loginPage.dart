import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonepenew/auth/login/loginRepo.dart';
import 'package:phonepenew/auth/login/login_cubit.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  late LoginCubit objloginCubit;

  @override
  void initState() {
    objloginCubit = LoginCubit(loginRepo());
    super.initState();
  }

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
                height: 300,
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
                  GestureDetector(
                    onTap: (){
                      objloginCubit.login();
                    },
                    child: Container(
                        height: 55,
                        width: 300,
                        color: Colors.purple,
                        alignment: Alignment.center,
                        child: BlocProvider(
                          create: (context) => objloginCubit,
                          child: BlocListener<LoginCubit, LoginState>(
                            bloc: objloginCubit,
                            listener: (context, state) {
                              if (state is LoginInitial) {
                              } else if (state is LoginLoading) {
                              }
                                else if (state is LoginSuccess){
                              }
                              else if (state is LoginFail) {
                              } else {}
                            },
                            child: BlocBuilder<LoginCubit, LoginState>(
                              builder: (context, state) {
                                if (state is LoginInitial) {
                                  return Center(
                                    child: Text(
                                      "Proceed",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  );
                                } else if (state is LoginLoading) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CircularProgressIndicator(),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Proceed",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  );

                                }
                                else if(state is LoginSuccess){
                                  return Center(
                                    child: Text(
                                      "Success",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  );
                                }

                                else if (state is LoginFail) {
                                  return Center(
                                    child: Text(
                                      "Failed",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            ),
                          ),
                        )),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
