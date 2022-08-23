import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'Init/navigation/navigation_service.dart';

class AuthRequiredState<T extends StatefulWidget>
    extends SupabaseAuthRequiredState<T> {
  @override
  NavigationService navigation = NavigationService.instance;
  late final String navigateString;
  void onUnauthenticated() {
    /// Users will be sent back to the LoginPage if they sign out.
    if (mounted) {
      /// Users will be sent back to the LoginPage if they sign out.
      navigateString = "/login";
        
        print(navigateString);
   //     navigation.navigateToPage(path: navigateString);
     
    }
  }
}