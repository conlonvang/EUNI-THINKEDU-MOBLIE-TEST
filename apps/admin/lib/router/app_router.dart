import 'package:admin/router/app_routes.dart';
import 'package:go_router/go_router.dart';


final GoRouter appRouter = GoRouter(
  initialLocation: '/trangchu',
  routes: appRoutes,
  debugLogDiagnostics: true,
);
