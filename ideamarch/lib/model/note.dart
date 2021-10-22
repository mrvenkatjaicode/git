import 'package:ideamarch/main.dart';

class Post {
  final String userName;
  final int id;
  final String userPhone;
  final String userEmail;
  final String userAddress;

  Post(
      {required this.userName,
      required this.id,
      required this.userPhone,
      required this.userEmail,
      required this.userAddress});

  factory Post.fromJson(Map json) {
    return Post(
      userName: json['userName'],
      id: json['id'],
      userPhone: json['userPhone'],
      userAddress: json['userAddress'],
      userEmail: json['userEmail'],
    );
  }

  Map toMap() {
    var map = new Map();
    map["userName"] = nameController.text;
    map["userPhone"] = phoneController.text;
    map["userAddress"] = addressController.text;
    map["userEmail"] = mailController.text;

    return map;
  }
}
