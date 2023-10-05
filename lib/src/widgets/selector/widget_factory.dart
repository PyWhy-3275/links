import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:flutter/material.dart';

class WidgetFactory extends StatefulWidget {
  const WidgetFactory({super.key});

  @override
  WidgetFactoryState createState() => WidgetFactoryState();
}

class WidgetFactoryState extends State<WidgetFactory> {
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var exportor = key.currentWidget as DynamicWidgetJsonExportor;
          var exportJsonString = exportor.exportJsonString();

          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("json string was exported to editor page.")));
          //TODO: show json string export widget
          print(exportJsonString);
        },
        heroTag: "add_widget",
        child: const Icon(Icons.save),
      ),
      appBar: AppBar(
        title: const Text("Widget Json Factory"),
      ),
      body: Builder(
        builder: (context) => SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              DynamicWidgetJsonExportor(
                key: key,
                // everything from this point will be exported as json
                //
                //
                //
                //
                //
                child: const Icon(Icons.window_sharp),
                //
                //
                //
                //
                //
              ),
            ],
          ),
        ),
      ),
    );
  }
}
