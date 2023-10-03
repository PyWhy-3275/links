import 'package:flutt_folio/src/widgets/selector/json_exporter.dart';
import 'package:flutt_folio/src/widgets/selector/selectable_widgets.dart';
import 'package:flutt_folio/src/widgets/selector/widget_card.dart';
import 'package:flutter/material.dart';

class SelectableWidgetsView extends StatelessWidget {
  const SelectableWidgetsView({Key? key}) : super(key: key);

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
                // showcase widgets
                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      runAlignment: WrapAlignment.spaceAround,
                      children: [
                        for (var widget in selectableWidgets) ...[
                          WidgetCard(
                              name: widget["name"],
                              description: widget["description"]),
                        ]
                      ],
                    ),
                  ),
                ),

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
