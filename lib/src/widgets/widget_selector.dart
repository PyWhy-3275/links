import 'package:flutter/material.dart';

/// The widget selector is a widget that will be used to select widgets to place
/// in the portfolio page.
///
/// This widget will be used in the editor view, when the app is run in debug
/// mode.

class WidgetSelector extends StatelessWidget {
  const WidgetSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Container(
            width: 300,
            height: 300,
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
