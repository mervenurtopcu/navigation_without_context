import 'package:navigation/pages/home_detail.dart';
import 'package:navigation/pages/home_view.dart';
import 'package:navigation/pages/profile_view.dart';

class NavigatorRoutes{
  static const initial = "/";
  final routes = {
    initial: (context) => const ProfileView(),
    NavigateRoutes.home.withParaf: (context) => const HomeView(),
    NavigateRoutes.detail.withParaf: (context) => const HomeDetail(),
  };
}
enum NavigateRoutes {
  profile,home, detail
}
extension NavigateRoutesExtension on NavigateRoutes {
  String get withParaf => "/$name";
}
