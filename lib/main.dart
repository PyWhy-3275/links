import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutt_folio/src/classes/parser/ink_well.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

void main() async {
  // add the Parsers to dynamically build the widgets
  DynamicWidgetBuilder.addParser(InkWellParser());
  // start the app
  runApp(const MyApp());
}
