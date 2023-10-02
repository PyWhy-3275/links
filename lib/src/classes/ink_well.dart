import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

//TODO: Finish this class by adding all InkWell parameters
class InkWellParser extends WidgetParser {
  @override
  String get widgetName => "InkWell";

  @override
  Type get widgetType => InkWell;

  @override
  Map<String, dynamic>? export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as InkWell;
    var map = <String, dynamic>{
      "type": widgetName,
      "child": DynamicWidgetBuilder.export(realWidget.child, buildContext)
    };
    return map;
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    String clickEvent =
        map.containsKey("click_event") ? map['click_event'] : "";

    var inkWell = InkWell(
      child: DynamicWidgetBuilder.buildFromMap(
          map['child'], buildContext, listener),
      onTap: () {
        listener!.onClicked(clickEvent);
      },
    );

    return inkWell;
  }
}
