import 'package:flutt_folio/src/widgets/selector/json_exporter.dart';
import 'package:flutter/material.dart';

class WidgetSheetView extends StatelessWidget {
  const WidgetSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(("Widget Selector"),
                        style: Theme.of(context).textTheme.titleLarge),
                    const Spacer(),
                    IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.close))
                  ],
                ),
                const Divider(),
                //TODO: Showcase some widgets here,
                // I will need to create some widgets first tough, wont take long tough ^^

                const Spacer(),
                const Divider(),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const JSONExporter()));
                    },
                    child: const Text("Json Exporter"))
              ],
            )));
  }
}
