import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paycoin_kyusung_app/generated/l10n.dart';
import 'package:paycoin_kyusung_app/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: PaycoinApp(),
    ),
  );
}

class PaycoinApp extends ConsumerWidget {
  const PaycoinApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // S.load(const Locale('en'));
    return MaterialApp.router(
      routerConfig: ref.watch(routerProvider),
      title: 'Paycoin',
      localizationsDelegates: const [
        S.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ko'),
      ],
      themeMode: ThemeMode.system,
      theme: ThemeData(
        textTheme: Typography.blackMountainView,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color.fromARGB(255, 29, 97, 239),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
      ),
    );
  }
}
