import 'package:flutter/material.dart';

import '../product/mixin/navigator_mixin.dart';
import '../product/navigation/navigator_manager.dart';
import '../product/navigation/navigator_routes.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> with NavigatorMixin {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () async {
      router.pushToPage(NavigateRoutes.detail,arguments: "Merve");
      //await NavigatorManager.instance.pushToPage(NavigateRoutes.detail, arguments: "Merve");
    });
  }
}
