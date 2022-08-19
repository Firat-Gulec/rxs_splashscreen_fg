import 'package:flutter/material.dart';
import 'package:rxs_spashscreen_fg/core/cache_manager.dart';
import 'package:rxs_spashscreen_fg/core/model/user_model.dart';




class AuthenticationManager extends CacheManager {
  BuildContext context;
  AuthenticationManager({
    required this.context,
  }) {
    fetchUserLogin();
  }
  bool isLogin = false;
    UserModel? model;

  Future<void> fetchUserLogin() async {
    final token = await getUserLogin();
    if (token != null) {
      isLogin = true;
    }
  }
}
