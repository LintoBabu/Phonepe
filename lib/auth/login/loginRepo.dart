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
    var responds = await http.get(Uri.parse("https://run.mocky.io/v3/f0ae680e-7306-4dd9-a9fc-c70dc18632f8"));
    if (responds.statusCode==200){
      var data = jsonDecode(responds.body);
      objloginModel = loginModel.fromJson(data);
    }
    return objloginModel!;
  }

}