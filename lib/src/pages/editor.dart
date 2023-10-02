/// Editor view for the app
///
/// The plan is basically to show an editor, when the app is run in debug mode,
/// so the user can edit the portfolio page, when he runs the app in debug mode,
/// using simple drag and drop, markdown and other stuff.
///
/// the user will also be able to create custom widgets that can be used later.

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutt_folio/src/classes/click_listener.dart';
import 'package:flutt_folio/src/helper/editor.dart';
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

    Future<Widget>? buildEditor() async {
      try {
        String layoutString = await DefaultAssetBundle.of(context)
            .loadString("assets/layout.json");

        String editorLayout =
            await fillNullChildWithWidgetSelector(layoutString);

        return DynamicWidgetBuilder.build(
            editorLayout, context, DefaultClickListener())!;
      } catch (e) {
        return const Center(
          child: WidgetSelector(),
        );
      }
    }

    return Scaffold(
      body: Center(
        child: FutureBuilder<Widget>(
          future: buildEditor(),
          builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return snapshot.hasData ? snapshot.data! : const Text("Loading...");
          },
        ),
      ),
    );
  }
}
