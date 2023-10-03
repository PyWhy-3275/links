import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutt_folio/src/app.dart';
import 'package:flutt_folio/src/widgets/selector/selectable_widgets_view.dart';
import 'package:flutter/material.dart';

class DefaultClickListener implements ClickListener {
  @override
  void onClicked(String? event) {
    // here click events are handled
    if (event == null) return;
    if (event == "open://WidgetSelector") widgetSelectorPush();
  }
}

widgetSelectorPush() {
  // the url is the url of the widget selector
  navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => const SelectableWidgetsView()));
}
