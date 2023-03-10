import 'package:flutter/cupertino.dart';
import 'package:navigation/product/navigation/navigator_manager.dart';

mixin NavigatorMixin <T extends StatefulWidget> on State<T> {
  NavigatorManager get router => NavigatorManager.instance;
}