import 'package:flutt_folio/src/pages/editor.dart';
import 'package:flutter/foundation.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: kDebugMode
          ? FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.settings),
            )
          : null,
      body: kDebugMode ? const EditorView() : null,
    );
  }
}
