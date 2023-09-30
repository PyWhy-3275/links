import 'package:flutt_folio/src/pages/auth/login.dart';
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginView();
                  }));
                },
                child: Text('Test'))));
  }
}
