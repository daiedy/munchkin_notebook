// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i13;

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:munchkin_notebook1/features/choose_color_page/presentation/choose_color_page.dart'
    as _i8;
import 'package:munchkin_notebook1/features/choose_gender_page/gender.dart'
    as _i12;
import 'package:munchkin_notebook1/features/choose_gender_page/presentation/choose_gender_page.dart'
    as _i7;
import 'package:munchkin_notebook1/features/create_game_page/presentation/create_game_page.dart'
    as _i1;
import 'package:munchkin_notebook1/features/enter_code/presentation/enter_code.dart'
    as _i2;
import 'package:munchkin_notebook1/features/enter_name_page/presentation/enter_name_page.dart'
    as _i3;
import 'package:munchkin_notebook1/features/game_page/presentation/game_page.dart'
    as _i9;
import 'package:munchkin_notebook1/features/join_game/presentation/join_game.dart'
    as _i4;
import 'package:munchkin_notebook1/features/max_level_page/presentation/max_level_page.dart'
    as _i5;
import 'package:munchkin_notebook1/features/self_counting/presentation/self_counting.dart'
    as _i6;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    CreateGameRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreateGamePage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EnterCodePage(),
      );
    },
    EnterNameRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EnterNamePage(),
      );
    },
    JoinGameRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.JoinGamePage(),
      );
    },
    MaxLevelRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MaxLevelPage(),
      );
    },
    SelfCountingRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SelfCountingPage(),
      );
    },
    ChooseGenderRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseGenderRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ChooseGenderPage(
          key: args.key,
          playerName: args.playerName,
        ),
      );
    },
    ChooseColorRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseColorRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ChooseColorPage(
          key: args.key,
          playerName: args.playerName,
          playerGender: args.genderPlayer,
        ),
      );
    },
    GameRoute.name: (routeData) {
      final args = routeData.argsAs<GameRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.GamePage(
          key: args.key,
          playerName: args.playerName,
          playerGender: args.playerGender,
          playerColor: args.playerColor,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateGamePage]
class CreateGameRoute extends _i10.PageRouteInfo<void> {
  const CreateGameRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CreateGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateGameRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EnterCodePage]
class EnterCodeRoute extends _i10.PageRouteInfo<void> {
  const EnterCodeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EnterCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterCodeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EnterNamePage]
class EnterNameRoute extends _i10.PageRouteInfo<void> {
  const EnterNameRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EnterNameRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterNameRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.JoinGamePage]
class JoinGameRoute extends _i10.PageRouteInfo<void> {
  const JoinGameRoute({List<_i10.PageRouteInfo>? children})
      : super(
          JoinGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinGameRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MaxLevelPage]
class MaxLevelRoute extends _i10.PageRouteInfo<void> {
  const MaxLevelRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MaxLevelRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaxLevelRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SelfCountingPage]
class SelfCountingRoute extends _i10.PageRouteInfo<void> {
  const SelfCountingRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SelfCountingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelfCountingRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ChooseGenderPage]
class ChooseGenderRoute extends _i10.PageRouteInfo<ChooseGenderRouteArgs> {
  ChooseGenderRoute({
    _i11.Key? key,
    required String playerName,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ChooseGenderRoute.name,
          args: ChooseGenderRouteArgs(
            key: key,
            playerName: playerName,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseGenderRoute';

  static const _i10.PageInfo<ChooseGenderRouteArgs> page =
      _i10.PageInfo<ChooseGenderRouteArgs>(name);
}

class ChooseGenderRouteArgs {
  const ChooseGenderRouteArgs({
    this.key,
    required this.playerName,
  });

  final _i11.Key? key;

  final String playerName;

  @override
  String toString() {
    return 'ChooseGenderRouteArgs{key: $key, playerName: $playerName}';
  }
}

/// generated route for
/// [_i8.ChooseColorPage]
class ChooseColorRoute extends _i10.PageRouteInfo<ChooseColorRouteArgs> {
  ChooseColorRoute({
    _i11.Key? key,
    required String playerName,
    required _i12.Gender genderPlayer,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ChooseColorRoute.name,
          args: ChooseColorRouteArgs(
            key: key,
            playerName: playerName,
            genderPlayer: genderPlayer,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseColorRoute';

  static const _i10.PageInfo<ChooseColorRouteArgs> page =
      _i10.PageInfo<ChooseColorRouteArgs>(name);
}

class ChooseColorRouteArgs {
  const ChooseColorRouteArgs({
    this.key,
    required this.playerName,
    required this.genderPlayer,
  });

  final _i11.Key? key;

  final String playerName;

  final _i12.Gender genderPlayer;

  @override
  String toString() {
    return 'ChooseColorRouteArgs{key: $key, playerName: $playerName, genderPlayer: $genderPlayer}';
  }
}

/// generated route for
/// [_i9.GamePage]
class GameRoute extends _i10.PageRouteInfo<GameRouteArgs> {
  GameRoute({
    _i11.Key? key,
    required String playerName,
    required _i12.Gender playerGender,
    required _i13.Color playerColor,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          GameRoute.name,
          args: GameRouteArgs(
            key: key,
            playerName: playerName,
            playerGender: playerGender,
            playerColor: playerColor,
          ),
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static const _i10.PageInfo<GameRouteArgs> page =
      _i10.PageInfo<GameRouteArgs>(name);
}

class GameRouteArgs {
  const GameRouteArgs({
    this.key,
    required this.playerName,
    required this.playerGender,
    required this.playerColor,
  });

  final _i11.Key? key;

  final String playerName;

  final _i12.Gender playerGender;

  final _i13.Color playerColor;

  @override
  String toString() {
    return 'GameRouteArgs{key: $key, playerName: $playerName, playerGender: $playerGender, playerColor: $playerColor}';
  }
}
