import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'View/calculator_ui.dart';

/// The Widget that initially configures the application language settings.
class CalculatorAppConfigure extends StatelessWidget {
  final calc;
  final calcController;

  const CalculatorAppConfigure({
    super.key,
    required this.calc,
    required this.calcController,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',

      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no courtry code
      ],

      // Use AppLocalizations to configure the correct application title
      // depending on the user's locale.
      //
      // The appTitle is defined in .arb files found in the localization
      // directory.
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,

      theme: new ThemeData(
        scaffoldBackgroundColor: Colors.grey[700],
      ),

      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Calculator"),
        ),
        body: CalculatorUI(
          calc: calc,
          calcController: calcController,
        ),
      ),
    );
  }
}
