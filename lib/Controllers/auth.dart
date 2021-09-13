import 'package:get/get.dart';
import 'package:heaven_riders_india/models/user.dart';

class Auth extends GetxController {
  var user = User(
      mobile:'+919803050043',
      password:'123456'
  );

  Future<bool> checkUser() async {
    return await Future.delayed(Duration(seconds: 3), (){ return false;});
  }
}

