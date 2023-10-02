/// Editor view for the app
///
/// The plan is basically to show an editor, when the app is run in debug mode,
/// so the user can edit the portfolio page, when he runs the app in debug mode,
/// using simple drag and drop, markdown and other stuff.
///
/// the user will also be able to create custom widgets that can be used later.

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutt_folio/src/classes/click_listener.dart';
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

    Future<Widget>? buildIndex() async {
      try {
        String layoutString = await DefaultAssetBundle.of(context)
            .loadString("assets/layout.json");

        //TODO: Manupulate the layout json to show the WidgetSelector for every child object thats null
        // in the json file, also add a stack around each object so the user can change the color of the
        // background of the widget, and add a button to delete the widget.

        return DynamicWidgetBuilder.build(
            layoutString, context, DefaultClickListener())!;
      } catch (e) {
        return const WidgetSelector();
      }
    }

    return Scaffold(
      body: Center(
        child: FutureBuilder<Widget>(
          future: buildIndex(),
          builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return snapshot.hasData
                ? SizedBox.expand(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          snapshot.data!,
                        ],
                      ),
                    ),
                  )
                : const Text("Loading...");
          },
        ),
      ),
    );
  }
}
