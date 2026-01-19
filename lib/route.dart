import 'package:go_router/go_router.dart';
import 'package:nilecare/views/authentication/forgot_password_screen.dart';
import 'package:nilecare/views/authentication/signin_screen.dart';
import 'package:nilecare/views/authentication/signup_screen.dart';
import 'package:nilecare/views/main_screens/Home_sceen.dart';
import 'package:nilecare/views/main_screens/activities_screen.dart';
import 'package:nilecare/views/main_screens/doctors_screen.dart';
import 'package:nilecare/views/main_screens/navbar.dart';
import 'package:nilecare/views/main_screens/services_screen.dart';
import 'package:nilecare/views/main_screens/settings_screen.dart';
import 'package:nilecare/views/onboarding/welcome_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const WelcomeScreen()),
      GoRoute(
        path: '/signin',
        builder: (context, state) => const SigninScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainNavs(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomeSceen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/doctors',
                builder: (context, state) => const DoctorsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/services',
                builder: (context, state) => const ServicesScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/activities',
                builder: (context, state) => const ActivitiesScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/settings',
                builder: (context, state) => const SettingsScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
