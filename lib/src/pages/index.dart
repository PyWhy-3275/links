import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutt_folio/src/classes/click_listener.dart';
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

    Future<Widget>? buildIndex() async {
      try {
        String layoutString = await DefaultAssetBundle.of(context)
            .loadString("assets/layout.json");

        return DynamicWidgetBuilder.build(
            layoutString, context, DefaultClickListener())!;
      } catch (e) {
        //TODO: Create a No Layout Found Widget
        return const Center(
          child: Text(
              "No Layout Found\nPlease create a layout first by running the app on a native machine [Windows, Linux, MacOS] in debug mode"),
        );
      }
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: kDebugMode
          ? FloatingActionButton(
              onPressed: () {
                // here I will let the user change some settings that i cant
                // implement in the widget editor, like the background color
                // global text color/styles, Favicon or the page title.

                // I think you know by now what i mean by this 😉
              },
              child: const Icon(Icons.settings),
            )
          : null,
      body: kDebugMode
          ? const EditorView()
          : FutureBuilder<Widget>(
              future: buildIndex(),
              builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                return snapshot.hasData
                    ? SizedBox.expand(
                        child: snapshot.data,
                      )
                    : const Text("Loading...");
              },
            ),
    );
  }
}
