import 'dart:convert';

/// this function will fill all null child objects with a WidgetSelector + add one
/// to every children list
Future<String> fillNullChildWithWidgetSelector(String jsonString) async {
  // TODO: test json string, will be replaced with the WidgetSelector, once i wrote the
  // class for it and figured out the click events
  var widgetSelectorJson = '''{
      "type": "Text",
      "data": "Hey It worked :)",
      "textAlign": "start",
      "overflow": null,
      "maxLines": null,
      "semanticsLabel": null,
      "softWrap": null,
      "textDirection": "ltr",
      "style": null,
      "textScaleFactor": null
    }''';

  Map jsonMap = jsonDecode(jsonString);

  jsonMap.forEach((key, value) {
    if (key == "child") {
      if (value == null) {
        jsonMap[key] = jsonDecode(widgetSelectorJson);
      }
    }
  });

  jsonMap.forEach((key, value) {
    if (key == "children") {
      if (value != null) {
        for (int i = 0; i < value.length; i++) {
          value[i]["children"] = [jsonDecode(widgetSelectorJson)];
        }
      }
    }
  });
  return jsonEncode(jsonMap);
}
