// this list houses the selectable widgets in the widget selector view.
import 'package:flutter/material.dart';

const double iconSize = 60;
const List<Map<String, dynamic>> selectableWidgets = <Map<String, dynamic>>[
  {
    "name": "Container",
    "description": "A simple container widget",
    "icon": Icon(Icons.crop_outlined, size: iconSize),
    "jsonWidget": {
      "type": "Container",
      "alignment": null,
      "padding": null,
      "color": null,
      "margin": null,
      "constraints": null,
      "child": null
    }
  },
  {
    "name": "TextWidget",
    "description": "A Text Widget that displays text.",
    "icon": Icon(Icons.text_fields, size: iconSize),
    "jsonWidget": {
      "type": "Text",
      "data": "Hello world",
      "textAlign": "start",
      "overflow": null,
      "maxLines": null,
      "semanticsLabel": null,
      "softWrap": null,
      "textDirection": "ltr",
      "style": null,
      "textScaleFactor": null
    }
  },
  {
    "name": "ElevatedButton",
    "description":
        "A button with a filled background, thats elevated from the background.",
    "icon": Icon(Icons.arrow_forward, size: iconSize),
    "jsonWidget": {
      "type": "ElevatedButton",
      "foregroundColor": null,
      "backgroundColor": null,
      "overlayColor": null,
      "shadowColor": null,
      "elevation": null,
      "padding": null,
      "textStyle": null,
      "child": null
    }
  },
  {
    "name": "TextButton",
    "description": "A button with text and transparent background.",
    "icon": Icon(Icons.text_fields, size: iconSize),
    "jsonWidget": {
      "type": "TextButton",
      "foregroundColor": null,
      "backgroundColor": null,
      "overlayColor": null,
      "shadowColor": null,
      "elevation": null,
      "padding": null,
      "textStyle": null,
      "child": {
        "type": "Text",
        "data": "Hello World",
        "textAlign": "start",
        "overflow": null,
        "maxLines": null,
        "semanticsLabel": null,
        "softWrap": null,
        "textDirection": "ltr",
        "style": null,
        "textScaleFactor": null
      }
    }
  },
  {
    "name": "Row",
    "description": "A row of widgets",
    "icon": Icon(Icons.table_rows_rounded, size: iconSize),
    "jsonWidget": {
      "type": "Row",
      "crossAxisAlignment": "center",
      "mainAxisAlignment": "start",
      "mainAxisSize": "max",
      "textBaseline": "ideographic",
      "textDirection": null,
      "verticalDirection": "down",
      "children": []
    }
  },
  {
    "name": "Column",
    "description": "A column of widgets",
    "icon": Icon(Icons.view_column_rounded, size: iconSize),
    "jsonWidget": {
      "type": "Column",
      "crossAxisAlignment": "center",
      "mainAxisAlignment": "start",
      "mainAxisSize": "max",
      "textBaseline": "ideographic",
      "textDirection": null,
      "verticalDirection": "down",
      "children": []
    }
  },
  {
    "name": "NetworkImage",
    "description": "A network image",
    "icon": Icon(Icons.image, size: iconSize),
    "jsonWidget": {
      "type": "NetworkImage",
      "src":
          "https://www2.tuhh.de/zll/wp-content/uploads/placeholder-300x200.png",
      "semanticLabel": null,
      "excludeFromSemantics": false,
      "width": null,
      "height": null,
      "color": null,
      "colorBlendMode": null,
      "fit": null,
      "alignment": "center",
      "repeat": "noRepeat",
      "centerSlice": null,
      "matchTextDirection": false,
      "gaplessPlayback": false,
      "filterQuality": "low"
    }
  },
  {
    "name": "AssetImage",
    "description": "A Image from the assets folder.",
    "icon": Icon(Icons.image, size: iconSize),
    "jsonWidget": {
      "type": "AssetImage",
      "name": "assets/images/flutter_logo.png",
      "semanticLabel": null,
      "excludeFromSemantics": false,
      "width": null,
      "height": null,
      "color": null,
      "colorBlendMode": null,
      "fit": null,
      "alignment": "center",
      "repeat": "noRepeat",
      "centerSlice": null,
      "matchTextDirection": false,
      "gaplessPlayback": false,
      "filterQuality": "low"
    }
  },
  {
    "name": "Placeholder",
    "description": "A placeholder Widget.",
    "icon": Icon(Icons.image, size: iconSize),
    "jsonWidget": {
      "type": "Placeholder",
      "color": "ff455a64",
      "strokeWidth": 2.0,
      "fallbackWidth": 400.0,
      "fallbackHeight": 400.0
    }
  },
  {
    "name": "PageView",
    "description":
        "Creates a scrollable list that works page by page from an explicit [List] of widgets.",
    "icon": Icon(Icons.list, size: iconSize),
    "jsonWidget": {
      "type": "Expanded",
      "flex": 1,
      "child": {
        "type": "PageView",
        "scrollDirection": "horizontal",
        "reverse": false,
        "pageSnapping": true,
        "children": []
      }
    }
  },
  {
    "name": "Expanded",
    "description": "Expands the child widget.",
    "icon": Icon(Icons.expand, size: iconSize),
    "jsonWidget": {
      "type": "Expanded",
      "flex": 1,
      "child": null,
    }
  },
  {
    "name": "Padding",
    "description": "Add padding to the child widget.",
    "icon": Icon(Icons.padding, size: iconSize),
    "jsonWidget": {
      "type": "Padding",
      "padding": "10.0,10.0,10.0,10.0",
      "child": null
    }
  },
  {
    "name": "Center",
    "description": "Centers the child widget.",
    "icon": Icon(Icons.center_focus_strong, size: iconSize),
    "jsonWidget": {
      "type": "Center",
      "widthFactor": null,
      "heightFactor": null,
      "child": null
    }
  },
  {
    "name": "Align",
    "description": "Align the child widget",
    "icon": Icon(Icons.align_horizontal_center, size: iconSize),
    "jsonWidget": {
      "type": "Align",
      "alignment": "center",
      "widthFactor": null,
      "heightFactor": null,
      "child": null
    }
  },
  {
    "name": "AspectRatio",
    "description": "Creates a widget with a specific aspect ratio.",
    "icon": Icon(Icons.aspect_ratio, size: iconSize),
    "jsonWidget": {
      "type": "AspectRatio",
      "aspectRatio": 1.0,
      "child": null,
    }
  },
  {
    "name": "FittedBox",
    "description":
        "Creates a widget that scales and positions its child within itself according to [fit].",
    "icon": Icon(Icons.fullscreen, size: iconSize),
    "jsonWidget": {
      "type": "FittedBox",
      "alignment": "center",
      "fit": "contain",
      "child": null
    }
  },
  {
    "name": "Baseline",
    "description":
        "Creates a widget that positions its child according to the child's baseline.",
    "icon": Icon(Icons.format_line_spacing, size: iconSize),
    "jsonWidget": {
      "type": "Baseline",
      "baseline": 50.0,
      "baselineType": "alphabetic",
      "child": null
    }
  },
  {
    "name": "Stack",
    "description":
        "Creates a stack layout widget, so you can position one widget above another for example using the positioned widget.",
    "icon": Icon(Icons.add_to_photos_rounded, size: iconSize),
    "jsonWidget": {
      "type": "Stack",
      "alignment": "topStart",
      "textDirection": "ltr",
      "fit": "loose",
      "clipBehavior": "hardEdge",
      "children": []
    }
  },
  {
    "name": "Positioned",
    "description":
        "Creates a widget that controls where a child of a [Stack] is positioned.",
    "icon": Icon(Icons.photo_size_select_small_rounded, size: iconSize),
    "jsonWidget": {
      "type": "Positioned",
      "top": null,
      "right": null,
      "bottom": null,
      "left": null,
      "width": null,
      "height": null,
      "child": null
    }
  },
  {
    "name": "SizedBox",
    "description": "A Box with the size you define",
    "icon": Icon(Icons.crop_square, size: iconSize),
    "jsonWidget": {
      "type": "SizedBox",
      "width": null,
      "height": null,
      "child": null
    }
  },
  {
    "name": "Opacity",
    "description": "Set the Opacity of the child widget",
    "icon": Icon(Icons.opacity, size: iconSize),
    "jsonWidget": {
      "type": "Opacity",
      "opacity": 0.5,
      "alwaysIncludeSemantics": false,
      "child": null
    }
  },
  {
    "name": "Wrap",
    "description": "Wrap widgets dynamically.",
    "icon": Icon(Icons.window_sharp, size: iconSize),
    "jsonWidget": {
      "type": "Wrap",
      "direction": "horizontal",
      "alignment": "start",
      "spacing": 0.0,
      "runAlignment": "start",
      "runSpacing": 0.0,
      "crossAxisAlignment": "start",
      "textDirection": null,
      "verticalDirection": "down",
      "children": []
    }
  },
  {
    "name": "ListTile",
    "description": "A classic List Tile Widget.",
    "icon": Icon(Icons.list_alt_rounded, size: iconSize),
    "jsonWidget": {
      "type": "ListTile",
      "isThreeLine": false,
      "leading": null,
      "title": null,
      "subtitle": null,
      "trailing": null,
      "dense": null,
      "contentPadding": null,
      "enabled": true,
      "selected": false
    }
  },
  {
    "name": "SelectableText",
    "description": "Text you can select using your cursor.",
    "icon": Icon(Icons.text_fields, size: iconSize),
    "jsonWidget": {
      "type": "SelectableText",
      "data": "Hello World",
      "textAlign": "start",
      "maxLines": null,
      "textDirection": "ltr",
      "style": null
    }
  },
  {
    "name": "Icon",
    "description": " Creates a Icon widget",
    "icon": Icon(Icons.emoji_symbols, size: iconSize),
    "jsonWidget": {
      "type": "Icon",
      "data": "android",
      "size": null,
      "color": null,
      "semanticLabel": null,
      "textDirection": null
    }
  },
  {
    "name": "AppBar",
    "description": "Create a app bar.",
    "icon": Icon(Icons.app_settings_alt_rounded, size: iconSize),
    "jsonWidget": {
      "type": "AppBar",
      "title": null,
      "leading": null,
      "actions": null,
      "centerTitle": null,
      "backgroundColor": null
    }
  },
  {
    "name": "LimitedBox",
    "description":
        "Creates a box that limits its size only when it's unconstrained.",
    "icon": Icon(Icons.crop_7_5, size: iconSize),
    "jsonWidget": {
      "type": "LimitedBox",
      "maxWidth": 9999999999.0,
      "maxHeight": 9999999999.0,
      "child": null
    }
  },
  {
    "name": "Offstage",
    "description": "Creates a widget that visually hides its child.",
    "icon": Icon(Icons.visibility_off, size: iconSize),
    "jsonWidget": {
      "type": "Offstage",
      "offstage": true,
      "child": null,
    }
  },
  {
    "name": "OverflowBox",
    "description": "Creates a widget that lets its child overflow itself.",
    "icon": Icon(Icons.crop_7_5, size: iconSize),
    "jsonWidget": {
      "type": "OverflowBox",
      "alignment": "center",
      "minWidth": null,
      "maxWidth": null,
      "minHeight": null,
      "maxHeight": null,
      "child": null
    }
  },
  {
    "name": "Divider",
    "description": "Creates a Material style Divider",
    "icon": Icon(Icons.horizontal_rule_rounded, size: iconSize),
    "jsonWidget": {
      "type": "Divider",
      "height": null,
      "thickness": null,
      "indent": null,
      "endIndent": null,
      "color": null
    }
  },
  {
    "name": "RotatedBox",
    "description": "A widget that rotates its child.",
    "icon": Icon(Icons.rotate_right, size: iconSize),
    "jsonWidget": {"type": "RotatedBox", "quarterTurns": 1, "child": null}
  },
  {
    "name": "SingleChildScrollView",
    "description": "Creates a box in which a single widget can be scrolled.",
    "icon": Icon(Icons.swipe_vertical_outlined, size: iconSize),
    "jsonWidget": {
      "type": "SingleChildScrollView",
      "scrollDirection": "vertical",
      "reverse": false,
      "padding": null,
      "child": null,
    }
  },
];
