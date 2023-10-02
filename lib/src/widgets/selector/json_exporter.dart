import 'dart:convert';
import 'dart:io';

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

  Future<void> writeJsonToFile(String json, String varName) async {
    var dir = Directory.current;
    var file =
        File("${dir.path}/lib/src/widgets/selector/selectable_widgets.dart");

    if (await file.exists()) {
      // If the file already exists, append the formatted JSON to the bottom.
      String formattedJson = formatJson(jsonDecode(json));
      await file.writeAsString("\nvar $varName = '''\n$formattedJson\n''';",
          mode: FileMode.append);
    } else {
      // If the file doesn't exist, create it and write the formatted JSON.
      String formattedJson = formatJson(jsonDecode(json));
      await file.create();
      await file.writeAsString("var $varName = '''\n$formattedJson\n''';");
    }
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
          await writeJsonToFile(exportJsonString, "containerWidget");
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
              Expanded(
                child: DynamicWidgetJsonExportor(
                  key: key,
                  // everything from this point will be exported as json
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey,
                            width: 5,
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            size: 100,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
