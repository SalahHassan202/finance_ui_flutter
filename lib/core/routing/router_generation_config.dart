import 'package:finance_ui_flutter/core/routing/app_route.dart';
import 'package:finance_ui_flutter/features/all_cards/all_cards.dart';
import 'package:finance_ui_flutter/features/auth/login_screen.dart';
import 'package:finance_ui_flutter/features/create_new_password.dart/create_new_password.dart';
import 'package:finance_ui_flutter/features/forget_password/forget_password.dart';
import 'package:finance_ui_flutter/features/main_screen/main_screen.dart';
import 'package:finance_ui_flutter/features/my_profile/my_profile.dart';
import 'package:finance_ui_flutter/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:finance_ui_flutter/features/passwod_changed/password_changed.dart';
import 'package:finance_ui_flutter/features/verify_otp/verify_otp_screen.dart';
import 'package:finance_ui_flutter/features/statistics/statistics_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.verifyOtpScreen,
        name: AppRoutes.verifyOtpScreen,
        builder: (context, state) => const VerifyOtpScreen(),
      ),

      GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) => const MainScreen(),
        routes: [
          GoRoute(
            path: 'home',
            name: 'main_screen_home',
            builder: (context, state) => const MainScreen(),
          ),
          GoRoute(
            path: 'statistics',
            name: 'main_screen_statistics',
            builder: (context, state) => const StatisticsScreen(),
          ),
          GoRoute(
            path: 'myCard',
            name: 'main_screen_myCard',
            builder: (context, state) => const MyCard(),
          ),
          GoRoute(
            path: 'profile',
            name: 'main_screen_profile',
            builder: (context, state) => const MyProfile(),
          ),
        ],
      ),

      GoRoute(
        path: AppRoutes.forgetPassword,
        name: AppRoutes.forgetPassword,
        builder: (context, state) => const ForgetPassword(),
      ),
      GoRoute(
        path: AppRoutes.profile,
        name: AppRoutes.profile,
        builder: (context, state) => const MyProfile(),
      ),
      GoRoute(
        path: AppRoutes.myCard,
        name: AppRoutes.myCard,
        builder: (context, state) => const MyCard(),
      ),
      GoRoute(
        path: AppRoutes.passwordChanged,
        name: AppRoutes.passwordChanged,
        builder: (context, state) => const PasswordChanged(),
      ),
      GoRoute(
        path: AppRoutes.createNewPassword,
        name: AppRoutes.createNewPassword,
        builder: (context, state) => const CreateNewPassword(),
      ),
      GoRoute(
        path: AppRoutes.statistics,
        name: AppRoutes.statistics,
        builder: (context, state) => const StatisticsScreen(),
      ),
    ],
  );
}
