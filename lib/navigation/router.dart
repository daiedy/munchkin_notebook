import 'package:auto_route/auto_route.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CreateGameRoute.page),
        AutoRoute(page: MaxLevelRoute.page),
        AutoRoute(page: SelfCountingRoute.page),
        AutoRoute(page: EnterCodeRoute.page),
        AutoRoute(page: JoinGameRoute.page),
      ];
}
