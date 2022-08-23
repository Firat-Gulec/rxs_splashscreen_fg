import 'package:flutter/material.dart';
import 'package:rxs_spashscreen_fg/core/constants.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'Init/navigation/navigation_service.dart';


class AuthState<T extends StatefulWidget> extends SupabaseAuthState<T> {
  @override
  NavigationService navigation = NavigationService.instance;
 late String navigateString; 
  void onUnauthenticated() {
    if (mounted) {
      navigateString = "/login";
        
        print(navigateString);
        navigation.navigateToPage(path: navigateString);
    }
  }

  @override
  void onAuthenticated(Session session) {
    if (mounted) {
      navigateString = '/profile_view';
        
        print(navigateString);
        navigation.navigateToPage(path: navigateString);
    }
  }

  @override
  void onPasswordRecovery(Session session) {}

  @override
  void onErrorAuthenticating(String message) {
    context.showErrorSnackBar(message: message);
  }
}