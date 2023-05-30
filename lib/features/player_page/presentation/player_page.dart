import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';
import 'package:munchkin_notebook1/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook1/features/number_text/presentation/number_text.dart';
import 'package:munchkin_notebook1/features/player_page/presentation/stat_counter.dart';
import 'package:munchkin_notebook1/features/player_page/presentation/stat_text.dart';
import 'package:munchkin_notebook1/features/player_page/stat_controller.dart';
import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
import 'package:munchkin_notebook1/main.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class PlayerPage extends StatefulWidget {
  PlayerPage({super.key, required this.player, required this.maxLevel});

  final Player player;
  final int maxLevel;
  late StatController levelController;
  late StatController bonusController;

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  late int strength;

  @override
  void initState() {
    widget.levelController = StatController(
        initStat: widget.player.level, minStat: 1, maxStat: widget.maxLevel);
    widget.bonusController = StatController(initStat: widget.player.bonus);
    strength = widget.player.strength;
    widget.levelController.addStatChangedListener((levelStat) {
      setState(() {
        strength = levelStat + widget.bonusController.stat;
      });
    });
    widget.bonusController.addStatChangedListener((bonusStat) {
      setState(() {
        strength = widget.levelController.stat + bonusStat;
      });
    });
    super.initState();
  }

  // final StatController
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: widget.player.name,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: StatCounter(
              controller: widget.levelController,
              imgPath: AppLocalizations.of(context)!.level_icon,
              title: AppLocalizations.of(context)!.level),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: StatCounter(
              controller: widget.bonusController,
              imgPath: AppLocalizations.of(context)!.bonus_icon,
              title: AppLocalizations.of(context)!.bonus),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: StatText(
                  AppLocalizations.of(context)!.strength,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                        AppLocalizations.of(context)!.strength_icon),
                  ),
                  NumberText(strength),
                ],
              ),
            ],
          ),
        )
      ]),
      actions: SecondaryButton(
        text: AppLocalizations.of(context)!.back_to_game_button,
        onPress: () {
          gameBloc.add(ChangePlayerStats(
              level: widget.levelController.stat,
              bonus: widget.bonusController.stat,
              player: widget.player));
          AutoRouter.of(context).replaceAll([const GameRoute()]);
        },
      ),
    );
  }
}
