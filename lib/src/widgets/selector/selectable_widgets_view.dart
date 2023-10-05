import 'package:flutt_folio/src/widgets/selector/selectable_widgets.dart';
import 'package:flutt_folio/src/widgets/selector/widget_card.dart';
import 'package:flutt_folio/src/widgets/selector/widget_factory.dart';
import 'package:flutter/material.dart';

class SelectableWidgetsView extends StatelessWidget {
  const SelectableWidgetsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton.extended(
            heroTag: "factory",
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const WidgetFactory()));
            },
            label: const Text("Factory"),
            icon: const Icon(Icons.add)),
        body: Padding(
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
                      alignment: WrapAlignment.spaceAround,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.spaceAround,
                      children: [
                        for (var widget in selectableWidgets) ...[
                          WidgetCard(
                              name: widget["name"],
                              description: widget["description"],
                              icon: widget["icon"],
                              jsonWidget: widget["jsonWidget"]),
                        ]
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
