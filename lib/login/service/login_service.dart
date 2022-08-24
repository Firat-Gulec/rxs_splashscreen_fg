import 'package:flutter/material.dart';
import 'package:rxs_spashscreen_fg/core/Init/navigation/navigation_service.dart';
import 'package:rxs_spashscreen_fg/core/utilities/supabase_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

NavigationService navigation = NavigationService.instance;

class LoginService {
  Future<void> setLoginUser(String name, String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', name);
    prefs.setString('password', password);
  }
  
}
