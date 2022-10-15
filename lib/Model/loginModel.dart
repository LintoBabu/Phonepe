class loginModel {
  bool? status;
  String? message;
  Data? data;

  loginModel({this.status, this.message, this.data});

  loginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? username;
  int? accountBalance;

  Data({this.username, this.accountBalance});

  Data.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    accountBalance = json['accountBalance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['accountBalance'] = this.accountBalance;
    return data;
  }
}
