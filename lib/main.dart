import 'package:flutter/material.dart';
import 'package:widget_catalog/semantics.dart';
import 'package:widget_catalog/text.dart';

import 'basic_widgets.dart';
import 'input_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //showSemanticsDebugger: true,
      home:  SemanticsWidget(),
    );
  }
}
