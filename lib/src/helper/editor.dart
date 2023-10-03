import 'dart:convert';

/// this function will fill all null child objects with a WidgetSelector + add one
/// to every children list

// TODO: change location of this variable
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

Future<String> addWidgetToAllChildren(String jsonString) async {
  dynamic jsonMap = json.decode(jsonString);

  void traverse(dynamic node) {
    if (node is Map<String, dynamic>) {
      if (node.containsKey("children") && node["children"] is List) {
        print("Added widget selector to children");
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

Future<String> addWidgetToAllNullChild(String jsonString) async {
  dynamic jsonMap = json.decode(jsonString);

  void traverse(dynamic node) {
    if (node is Map<String, dynamic>) {
      if (node.containsKey("child") && node["child"] == null) {
        print("Added widget selector to null child");
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

Future<String> fillNullChildWithWidgetSelector(String jsonString) async {
  Map<String, dynamic> jsonMap = json.decode(jsonString);
  // add the widget selector to all null children
  jsonMap = json.decode(await addWidgetToAllNullChild(jsonEncode(jsonMap)));
  // add the widget selector to all children
  jsonMap = json.decode(await addWidgetToAllChildren(jsonEncode(jsonMap)));
  return jsonEncode(jsonMap);
}
