import 'package:flutt_folio/src/widgets/selector/sheet_view.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

/// The widget selector is a widget that will be used to select widgets to place
/// in the portfolio page.
///
/// This widget will be used in the editor view, when the app is run in debug
/// mode.

class WidgetSelector extends StatelessWidget {
  const WidgetSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          showCupertinoModalBottomSheet(
              enableDrag: false,
              isDismissible: false,
              context: context,
              builder: (context) => const Material(
                    child: WidgetSheetView(),
                  ));
        },
        child: Container(
            width: 200,
            height: 200,
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
            )));
  }
}
