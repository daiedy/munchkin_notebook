import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';
import '../../../../core/ui/widgets/common_text.dart';

class EmptyGameBody extends StatelessWidget {
  const EmptyGameBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 160,
          color: AppColors.stub,
        ),
        CommonText(AppLocalizations.of(context)!.game_text)
      ],
    );
  }
}
