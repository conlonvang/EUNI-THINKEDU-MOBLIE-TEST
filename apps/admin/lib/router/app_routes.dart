import 'package:admin/pages/trangchu/view/trangchu_page.dart';
import 'package:admin/router/route_paths.dart';
import 'package:admin/router/router_names.dart';
import 'package:go_router/go_router.dart';



final List<GoRoute> appRoutes = [
  GoRoute(
    name: AppRouteNames.trangchu,
    path: AppRoutePaths.trangchu,
    builder: (context, state) => const TrangchuPage(),
  ),
  // GoRoute(
  //   name: AppRouteNames.profile,
  //   path: AppRoutePaths.profile,
  //   builder: (context, state) {
  //     final id = state.pathParameters['id']!;
  //     return ProfilePage(id: id);
  //   },
  // ),
];
