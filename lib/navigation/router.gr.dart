// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:munchkin_notebook1/features/create_game_page/presentation/create_game_page.dart'
    as _i1;
import 'package:munchkin_notebook1/features/self_counting/presentation/self_counting.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    CreateGameRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreateGamePage(),
      );
    },
    SelfCountingRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SelfCountingPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateGamePage]
class CreateGameRoute extends _i3.PageRouteInfo<void> {
  const CreateGameRoute({List<_i3.PageRouteInfo>? children})
      : super(
          CreateGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateGameRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SelfCountingPage]
class SelfCountingRoute extends _i3.PageRouteInfo<void> {
  const SelfCountingRoute({List<_i3.PageRouteInfo>? children})
      : super(
          SelfCountingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelfCountingRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
