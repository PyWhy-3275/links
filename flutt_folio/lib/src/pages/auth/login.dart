import 'package:flutter/material.dart';
import 'package:github/github.dart';

/// Displays a list of SampleItems.
class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

  static const routeName = '/auth/login';

  @override
  Widget build(BuildContext context) {
    // here all the logic for the view
    return Scaffold(
        body: ElevatedButton(onPressed: () async {}, child: Text('Login')));
  }
}
