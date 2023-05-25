// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:munchkin_notebook1/features/choose_color_page/presentation/choose_color_page.dart'
    as _i1;
import 'package:munchkin_notebook1/features/choose_gender_page/gender.dart'
    as _i13;
import 'package:munchkin_notebook1/features/choose_gender_page/presentation/choose_gender_page.dart'
    as _i2;
import 'package:munchkin_notebook1/features/create_game_page/presentation/create_game_page.dart'
    as _i3;
import 'package:munchkin_notebook1/features/enter_code/presentation/enter_code.dart'
    as _i4;
import 'package:munchkin_notebook1/features/enter_name_page/presentation/enter_name_page.dart'
    as _i5;
import 'package:munchkin_notebook1/features/game_options_page/presentation/game_options_page.dart'
    as _i6;
import 'package:munchkin_notebook1/features/game_page/presentation/game_page.dart'
    as _i7;
import 'package:munchkin_notebook1/features/join_game/presentation/join_game.dart'
    as _i8;
import 'package:munchkin_notebook1/features/max_level_page/presentation/max_level_page.dart'
    as _i9;
import 'package:munchkin_notebook1/features/self_counting/presentation/self_counting.dart'
    as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    ChooseColorRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseColorRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ChooseColorPage(
          key: args.key,
          playerName: args.playerName,
          playerGender: args.playerGender,
        ),
      );
    },
    ChooseGenderRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseGenderRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ChooseGenderPage(
          key: args.key,
          playerName: args.playerName,
        ),
      );
    },
    CreateGameRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CreateGamePage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EnterCodePage(),
      );
    },
    EnterNameRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EnterNamePage(),
      );
    },
    GameOptionsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.GameOptionsPage(),
      );
    },
    GameRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.GamePage(),
      );
    },
    JoinGameRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.JoinGamePage(),
      );
    },
    MaxLevelRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MaxLevelPage(),
      );
    },
    SelfCountingRoute.name: (routeData) {
      final args = routeData.argsAs<SelfCountingRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SelfCountingPage(
          key: args.key,
          maxLevel: args.maxLevel,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ChooseColorPage]
class ChooseColorRoute extends _i11.PageRouteInfo<ChooseColorRouteArgs> {
  ChooseColorRoute({
    _i12.Key? key,
    required String playerName,
    required _i13.Gender playerGender,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          ChooseColorRoute.name,
          args: ChooseColorRouteArgs(
            key: key,
            playerName: playerName,
            playerGender: playerGender,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseColorRoute';

  static const _i11.PageInfo<ChooseColorRouteArgs> page =
      _i11.PageInfo<ChooseColorRouteArgs>(name);
}

class ChooseColorRouteArgs {
  const ChooseColorRouteArgs({
    this.key,
    required this.playerName,
    required this.playerGender,
  });

  final _i12.Key? key;

  final String playerName;

  final _i13.Gender playerGender;

  @override
  String toString() {
    return 'ChooseColorRouteArgs{key: $key, playerName: $playerName, playerGender: $playerGender}';
  }
}

/// generated route for
/// [_i2.ChooseGenderPage]
class ChooseGenderRoute extends _i11.PageRouteInfo<ChooseGenderRouteArgs> {
  ChooseGenderRoute({
    _i12.Key? key,
    required String playerName,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          ChooseGenderRoute.name,
          args: ChooseGenderRouteArgs(
            key: key,
            playerName: playerName,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseGenderRoute';

  static const _i11.PageInfo<ChooseGenderRouteArgs> page =
      _i11.PageInfo<ChooseGenderRouteArgs>(name);
}

class ChooseGenderRouteArgs {
  const ChooseGenderRouteArgs({
    this.key,
    required this.playerName,
  });

  final _i12.Key? key;

  final String playerName;

  @override
  String toString() {
    return 'ChooseGenderRouteArgs{key: $key, playerName: $playerName}';
  }
}

/// generated route for
/// [_i3.CreateGamePage]
class CreateGameRoute extends _i11.PageRouteInfo<void> {
  const CreateGameRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CreateGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateGameRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EnterCodePage]
class EnterCodeRoute extends _i11.PageRouteInfo<void> {
  const EnterCodeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          EnterCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterCodeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EnterNamePage]
class EnterNameRoute extends _i11.PageRouteInfo<void> {
  const EnterNameRoute({List<_i11.PageRouteInfo>? children})
      : super(
          EnterNameRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterNameRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.GameOptionsPage]
class GameOptionsRoute extends _i11.PageRouteInfo<void> {
  const GameOptionsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          GameOptionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GameOptionsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.GamePage]
class GameRoute extends _i11.PageRouteInfo<void> {
  const GameRoute({List<_i11.PageRouteInfo>? children})
      : super(
          GameRoute.name,
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.JoinGamePage]
class JoinGameRoute extends _i11.PageRouteInfo<void> {
  const JoinGameRoute({List<_i11.PageRouteInfo>? children})
      : super(
          JoinGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinGameRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MaxLevelPage]
class MaxLevelRoute extends _i11.PageRouteInfo<void> {
  const MaxLevelRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MaxLevelRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaxLevelRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SelfCountingPage]
class SelfCountingRoute extends _i11.PageRouteInfo<SelfCountingRouteArgs> {
  SelfCountingRoute({
    _i12.Key? key,
    required int maxLevel,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SelfCountingRoute.name,
          args: SelfCountingRouteArgs(
            key: key,
            maxLevel: maxLevel,
          ),
          initialChildren: children,
        );

  static const String name = 'SelfCountingRoute';

  static const _i11.PageInfo<SelfCountingRouteArgs> page =
      _i11.PageInfo<SelfCountingRouteArgs>(name);
}

class SelfCountingRouteArgs {
  const SelfCountingRouteArgs({
    this.key,
    required this.maxLevel,
  });

  final _i12.Key? key;

  final int maxLevel;

  @override
  String toString() {
    return 'SelfCountingRouteArgs{key: $key, maxLevel: $maxLevel}';
  }
}
