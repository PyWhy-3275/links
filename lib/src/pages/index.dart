import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutt_folio/src/classes/click_listener.dart';
import 'package:flutt_folio/src/classes/flutt_folio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Displays a list of SampleItems.
class IndexView extends StatelessWidget {
  const IndexView({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final fluttFolio = Provider.of<FluttFolio>(context);

    Future<Widget>? buildIndex() async {
      try {
        String layoutString = await DefaultAssetBundle.of(context)
            .loadString("assets/layout.json");

        return DynamicWidgetBuilder.build(
            layoutString, context, DefaultClickListener())!;
      } catch (e) {
        fluttFolio.isEditingMode = true;
        return Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, size: 50),
            const Text(
                "No Layout Found, you can create one by clicking the button below 👇"),
            const Text(
                "and save the layout as layout.json in the assets folder of your forked repository"),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  widgetSelectorPush();
                },
                child: const Icon(Icons.add)),
          ],
        ));
      }
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: fluttFolio.isEditingMode
          ? FloatingActionButton(
              heroTag: "add_widget",
              onPressed: () {
                // here I will let the user change some settings that i cant
                // implement in the widget editor, like the background color
                // global text color/styles, Favicon or the page title.

                // I think you know by now what i mean by this 😉
              },
              child: const Icon(Icons.settings))
          : null,
      body: FutureBuilder<Widget>(
        future: buildIndex(),
        builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return snapshot.hasData ? snapshot.data! : const Text("Loading...");
        },
      ),
    );
  }
}
