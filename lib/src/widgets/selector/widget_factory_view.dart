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
        heroTag: "factory",
        child: const Icon(Icons.save),
      ),
      appBar: AppBar(
        title: const Text("Widget Json Factory"),
      ),
      body: Builder(
        builder: (context) => SizedBox(
          width: double.infinity,
          child: DynamicWidgetJsonExportor(
            key: key,
            // everything from this point will be exported as json
            //
            //
            //
            //
            //

            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.accessibility,
                    size: 50,
                  ),
                  Text("Would you look at that!"),
                  Text("Its all coming together hehe !"),
                ]),

            //
            //
            //
            //
            //
          ),
        ),
      ),
    );
  }
}

Future showWidgetFactoryView(BuildContext context) async {
  return await showGeneralDialog(
    context: context,
    barrierDismissible: false,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black45,
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (BuildContext buildContext, Animation animation,
        Animation secondaryAnimation) {
      return const WidgetFactory();
    },
  );
}
