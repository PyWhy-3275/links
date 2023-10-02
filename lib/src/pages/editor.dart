/// Editor view for the app
///
/// The plan is basically to show an editor, when the app is run in debug mode,
/// so the user can edit the portfolio page, when he runs the app in debug mode,
/// using simple drag and drop, markdown and other stuff.
///
/// the user will also be able to create custom widgets that can be used later.

import 'package:flutt_folio/src/widgets/selector/add_btn.dart';
import 'package:flutter/material.dart';

class EditorView extends StatelessWidget {
  const EditorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // we gonna return a scaffold with the editor view if it is in debug mode
    // else we gonna show the view for the portfolio

    // TODO: Load the layout.json file from the assets folder, and display the widget selector
    // on empty places in the layout.
    return const Scaffold(
      body: Center(
        child: WidgetSelector(),
      ),
    );
  }
}
