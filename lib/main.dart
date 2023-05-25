import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:munchkin_notebook1/core/ui/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';
import 'navigation/router.dart';

final _appRouter = AppRouter()
  ..delegate(initialRoutes: [const CreateGameRoute()]);

final GameBloc gameBloc = GameBloc();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Munchkin',
      routerConfig: _appRouter.config(),
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
      ],
    );
  }
}
