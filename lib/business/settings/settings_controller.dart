import 'dart:convert';

import 'package:get/get.dart';
import 'package:pear_todo/base/app.dart';
import 'package:pear_todo/model/user_account.dart';

class SettingsController extends GetxController {
  final Rxn<UserAccount> userAccount = Rxn<UserAccount>();

  @override
  void onInit() {
    super.onInit();
    loadUserAccount();
  }

  void loadUserAccount() {
    final userAccountString = App.getString("${App.spPrefix}userAccount");
    if (userAccountString != null) {
      final userAccountJson = jsonDecode(userAccountString);
      userAccount.value = UserAccount.fromJson(userAccountJson);
    }
  }

  void saveUserAccount() {
    App.setString("${App.spPrefix}userAccount", jsonEncode(userAccount));
  }
}
