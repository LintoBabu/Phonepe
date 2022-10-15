import 'dart:convert';

import 'package:phonepenew/Model/loginModel.dart';
import 'package:http/http.dart' as http;

abstract class LoginRepository{
Future<loginModel> login();
}
class loginRepo extends LoginRepository{
  @override
  Future<loginModel> login () async {
    loginModel? objloginModel;
    var responds = await http.get(Uri.parse("https://run.mocky.io/v3/2c61e0ea-ad98-42c3-9049-ad6b00d6cbc1"));
    if (responds.statusCode==200){
      var data = jsonDecode(responds.body);
      objloginModel = loginModel.fromJson(data);
    }
    return objloginModel!;
  }

}