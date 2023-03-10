import 'package:flutter/material.dart';
import 'package:navigation/product/mixin/navigator_mixin.dart';
import 'package:navigation/product/navigation/navigator_routes.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with NavigatorMixin{
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: ()async{
      router.pushToPage(NavigateRoutes.detail,arguments: "Merve");
    });
  }
}
