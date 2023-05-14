// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:munchkin_notebook1/features/choose_gender_page/presentation/choose_gender_page.dart'
    as _i7;
import 'package:munchkin_notebook1/features/create_game_page/presentation/create_game_page.dart'
    as _i1;
import 'package:munchkin_notebook1/features/enter_code/presentation/enter_code.dart'
    as _i2;
import 'package:munchkin_notebook1/features/enter_name_page/presentation/enter_name_page.dart'
    as _i3;
import 'package:munchkin_notebook1/features/join_game/presentation/join_game.dart'
    as _i4;
import 'package:munchkin_notebook1/features/max_level_page/presentation/max_level_page.dart'
    as _i5;
import 'package:munchkin_notebook1/features/self_counting/presentation/self_counting.dart'
    as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    CreateGameRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreateGamePage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EnterCodePage(),
      );
    },
    EnterNameRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EnterNamePage(),
      );
    },
    JoinGameRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.JoinGamePage(),
      );
    },
    MaxLevelRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MaxLevelPage(),
      );
    },
    SelfCountingRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SelfCountingPage(),
      );
    },
    ChooseGenderRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseGenderRouteArgs>(
          orElse: () => const ChooseGenderRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ChooseGenderPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateGamePage]
class CreateGameRoute extends _i8.PageRouteInfo<void> {
  const CreateGameRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CreateGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateGameRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EnterCodePage]
class EnterCodeRoute extends _i8.PageRouteInfo<void> {
  const EnterCodeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          EnterCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterCodeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EnterNamePage]
class EnterNameRoute extends _i8.PageRouteInfo<void> {
  const EnterNameRoute({List<_i8.PageRouteInfo>? children})
      : super(
          EnterNameRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterNameRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.JoinGamePage]
class JoinGameRoute extends _i8.PageRouteInfo<void> {
  const JoinGameRoute({List<_i8.PageRouteInfo>? children})
      : super(
          JoinGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinGameRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MaxLevelPage]
class MaxLevelRoute extends _i8.PageRouteInfo<void> {
  const MaxLevelRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MaxLevelRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaxLevelRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SelfCountingPage]
class SelfCountingRoute extends _i8.PageRouteInfo<void> {
  const SelfCountingRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SelfCountingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelfCountingRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ChooseGenderPage]
class ChooseGenderRoute extends _i8.PageRouteInfo<ChooseGenderRouteArgs> {
  ChooseGenderRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          ChooseGenderRoute.name,
          args: ChooseGenderRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChooseGenderRoute';

  static const _i8.PageInfo<ChooseGenderRouteArgs> page =
      _i8.PageInfo<ChooseGenderRouteArgs>(name);
}

class ChooseGenderRouteArgs {
  const ChooseGenderRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'ChooseGenderRouteArgs{key: $key}';
  }
}
