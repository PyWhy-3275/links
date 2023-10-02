import 'dart:io';

final layoutFile = File('assets/layout.json');

Future<void> writeToLayoutFile(jsonString) async {
  if (await layoutFile.exists()) {
    await layoutFile.writeAsString(jsonString);
  } else {
    await layoutFile.create();
    await layoutFile.writeAsString(jsonString);
  }
}
