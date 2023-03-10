import 'package:flutter/material.dart';
import 'package:navigation/product/navigation/navigator_custom.dart';
import 'package:navigation/product/navigation/navigator_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget with NavigatorCustom {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
       navigatorKey: NavigatorManager.instance.navigatorGlobalKey,
      // onUnknownRoute: ,

      onGenerateRoute: onGenerateRoute,
    );
  }
}
