class loginModel {
  String? status;
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
  String? userName;
  int? accountBalance;

  Data({this.userName, this.accountBalance});

  Data.fromJson(Map<String, dynamic> json) {
    userName = json['user name'];
    accountBalance = json['accountBalance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user name'] = this.userName;
    data['accountBalance'] = this.accountBalance;
    return data;
  }
}
