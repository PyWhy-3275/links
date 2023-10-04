import 'dart:convert';

import 'package:flutter/foundation.dart';

class FluttFolio with ChangeNotifier {
  final String layoutString;
  bool _isEditingMode = false;

  FluttFolio({required this.layoutString});

  String get jsonLayoutString => _getJsonLayoutString();
  bool get isEditingMode => _isEditingMode;

  set isEditingMode(bool value) {
    _isEditingMode = value;
    notifyListeners();
  }

  _getJsonLayoutString() {
    if (kDebugMode) {
      print("layoutString: $layoutString");
      return _fillNullChildWithWidgetSelector(layoutString);
    }
    return layoutString;
  }

  String widgetSelectorJson = '''
{
  "type": "ElevatedButton",
  "foregroundColor": null,
  "backgroundColor": null,
  "overlayColor": null,
  "shadowColor": null,
  "elevation": null,
  "padding": null,
  "textStyle": null,
  "click_event": "open://WidgetSelector",
  "child": {
    "type": "Icon",
    "data": "add",
    "size": null,
    "color": null,
    "semanticLabel": null,
    "textDirection": null
  }
}
''';

  _fillNullChildWithWidgetSelector(String jsonString) {
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    // add the widget selector to all null children
    jsonMap = json.decode(_addWidgetToAllNullChild(jsonEncode(jsonMap)));
    // add the widget selector to all children
    jsonMap = json.decode(_addWidgetToAllChildren(jsonEncode(jsonMap)));
    return jsonEncode(jsonMap);
  }

  _addWidgetToAllChildren(String jsonString) {
    dynamic jsonMap = json.decode(jsonString);

    void traverse(dynamic node) {
      if (node is Map<String, dynamic>) {
        if (node.containsKey("children") && node["children"] is List) {
          node["children"].add(json.decode(widgetSelectorJson));
        }
        for (var key in node.keys) {
          traverse(node[key]);
        }
      } else if (node is List) {
        for (var item in node) {
          traverse(item);
        }
      }
    }

    traverse(jsonMap);
    return jsonEncode(jsonMap);
  }

  _addWidgetToAllNullChild(String jsonString) {
    dynamic jsonMap = json.decode(jsonString);

    void traverse(dynamic node) {
      if (node is Map<String, dynamic>) {
        if (node.containsKey("child") && node["child"] == null) {
          node["child"] = json.decode(widgetSelectorJson);
        }
        for (var key in node.keys) {
          traverse(node[key]);
        }
      } else if (node is List) {
        for (var item in node) {
          traverse(item);
        }
      }
    }

    traverse(jsonMap);
    return jsonEncode(jsonMap);
  }
}
