import 'package:flutter/material.dart';

/// Displays a list of SampleItems.
class IndexView extends StatelessWidget {
  const IndexView({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    // here all the logic for the view
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/auth/login');
                },
                child: Text('Auth'))));
  }
}
