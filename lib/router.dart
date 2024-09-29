import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:paycoin_kyusung_app/features/home/home_screen.dart';
import 'package:paycoin_kyusung_app/features/splash_screen.dart';

final routerProvider = Provider((ref) {
//   ref.watch(authState);
  return GoRouter(
      initialLocation: "/splash",
      //   redirect: (context, state) {
      //     final isLoggedIn = ref.read(authRepo).isLoggedIn;
      //     if (!isLoggedIn) {
      //       if (state.matchedLocation != "/" &&
      //           state.matchedLocation != "/login") {
      //         return "/";
      //       }
      //     }
      //     return null;
      //   },
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            // ref.read(notificationsProvider(context));
            return child;
          },
          routes: [
            GoRoute(
              name: SplashScreen.routeName,
              path: "/splash",
              builder: (context, state) => const SplashScreen(),
            ),
            GoRoute(
              name: HomeScreen.routeName,
              path: "/home",
              builder: (context, state) => const HomeScreen(),
            ),
            // GoRoute(
            //   name: LoginScreen.routeName,
            //   path: "/login",
            //   builder: (context, state) => const LoginScreen(),
            // ),
          ],
        ),
      ]);
});
