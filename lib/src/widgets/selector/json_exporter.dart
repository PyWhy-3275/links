import 'dart:convert';

import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:flutter/material.dart';

class JSONExporter extends StatefulWidget {
  const JSONExporter({super.key});

  @override
  JSONExporterState createState() => JSONExporterState();
}

class JSONExporterState extends State<JSONExporter> {
  GlobalKey key = GlobalKey();

  String formatJson(Map<String, dynamic> jsonMap) {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    String prettyJsonString = encoder.convert(jsonMap);
    return prettyJsonString;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var exportor = key.currentWidget as DynamicWidgetJsonExportor;
          var exportJsonString = exportor.exportJsonString();

          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("json string was exported to editor page.")));
          print(exportJsonString);
        },
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
                child: // create DropCapText
                    Text("Hello there"),
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
