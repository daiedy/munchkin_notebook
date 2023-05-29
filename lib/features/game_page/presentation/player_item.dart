import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';
import 'package:munchkin_notebook1/features/game_page/presentation/icon_parameter.dart';
import 'package:munchkin_notebook1/features/parameter_more/presentation/parameter_more.dart';
import 'package:munchkin_notebook1/features/parameter_text/parameter_text.dart';

class PlayerItem extends StatelessWidget {
  const PlayerItem({super.key, required this.player});

  final Player player;

  @override
  Widget build(BuildContext context) {
    return ParameterMore(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ParameterText(player.name),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              IconParameter(
                  iconPath: AppLocalizations.of(context)!.level_icon,
                  value: player.level),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: IconParameter(
                    iconPath: AppLocalizations.of(context)!.bonus_icon,
                    value: player.bonus),
              ),
              IconParameter(
                  iconPath: AppLocalizations.of(context)!.strength_icon,
                  value: player.strength),
            ],
          )
        ],
      ),
    );
  }
}
