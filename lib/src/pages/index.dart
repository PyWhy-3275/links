import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutt_folio/src/pages/editor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DefaultClickListener implements ClickListener {
  @override
  void onClicked(String? event) {}
}

/// Displays a list of SampleItems.
class IndexView extends StatelessWidget {
  const IndexView({
    super.key,
  });

  static const routeName = '/';

  // TODO: replace the following static text with the layout.json file in the assets folder
  final String jsonString = '''
{
  "type": "Column",
  "crossAxisAlignment": "center",
  "mainAxisAlignment": "center",
  "mainAxisSize": "max",
  "textBaseline": "ideographic",
  "textDirection": null,
  "verticalDirection": "down",
  "children": [
    {
      "type": "Text",
      "data": "Hi, I think i have a solid plan to make this work:)",
      "textAlign": "start",
      "overflow": null,
      "maxLines": null,
      "semanticsLabel": null,
      "softWrap": null,
      "textDirection": "ltr",
      "style": {
        "color": "ffffffff",
        "debugLabel": null,
        "decoration": "none",
        "fontSize": null,
        "fontFamily": null,
        "fontStyle": "normal",
        "fontWeight": "normal"
      },
      "textScaleFactor": null
    },
    {
      "type": "Text",
      "data": "But that will need to wait until tomorrow",
      "textAlign": "start",
      "overflow": null,
      "maxLines": null,
      "semanticsLabel": null,
      "softWrap": null,
      "textDirection": "ltr",
      "style": {
        "color": "ffffffff",
        "debugLabel": null,
        "decoration": "none",
        "fontSize": null,
        "fontFamily": null,
        "fontStyle": "normal",
        "fontWeight": "normal"
      },
      "textScaleFactor": null
    }
  ]
}
  ''';
  @override
  Widget build(BuildContext context) {
    // here all the logic for the view

    Future<Widget> buildIndex() async {
      return DynamicWidgetBuilder.build(
          jsonString, context, DefaultClickListener())!;
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
