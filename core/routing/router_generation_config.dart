import 'package:finance_ui/core/features/auth/auth_provider.dart';
import 'package:finance_ui/core/features/auth/create_new_password.dart';
import 'package:finance_ui/core/features/auth/login_screen.dart';
import 'package:finance_ui/core/features/auth/password_changed_successfully.dart';
import 'package:finance_ui/core/features/auth/password_return.dart';
import 'package:finance_ui/core/features/auth/register_screen.dart';
import 'package:finance_ui/core/features/main_screen/main_provider.dart';
import 'package:finance_ui/core/features/main_screen/main_screen.dart';
import 'package:finance_ui/core/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:finance_ui/core/features/verify_otp/verify_otp_screen.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class RouterGenerationConfig {

  static GoRouter goRouter = GoRouter(

    initialLocation: AppRoutes.onBoardingScreen,

    routes: [

      GoRoute(
      path: AppRoutes.onBoardingScreen,
      name: AppRoutes.onBoardingScreen,
      builder: (context, state) => const OnBoardingScreen()),

//
      GoRoute(
      path: AppRoutes.loginScreen,
      name: AppRoutes.loginScreen,
      builder: (context, state) => 

      ChangeNotifierProvider(create: (context) => 
      AuthProvider(),

      child: const LoginScreen())),
//

      GoRoute(
      path: AppRoutes.registerScreen,
      name: AppRoutes.registerScreen,
      builder: (context, state) => const RegisterScreen()),

      GoRoute(
      path: AppRoutes.passwordReturn,
      name: AppRoutes.passwordReturn,
      builder: (context, state) => const PasswordReturn()),

      GoRoute(
      path: AppRoutes.passwordChangedSuccessfully,
      name: AppRoutes.passwordChangedSuccessfully,
      builder: (context, state) => const PasswordChangedSuccessfully()),

      GoRoute(
      path: AppRoutes.createNewPassword,
      name: AppRoutes.createNewPassword,
      builder: (context, state) => const CreateNewPassword()),

      GoRoute(
      path: AppRoutes.verifyOtpScreen,
      name: AppRoutes.verifyOtpScreen,
      builder: (context, state) => const VerifyOtpScreen()),

//
      GoRoute(
      path: AppRoutes.mainScreen,
      name: AppRoutes.mainScreen,
      builder: (context, state) => 

      ChangeNotifierProvider(create: (context) => 
      MainProvider(),

      child: const MainScreen())),
//

    ],

  );

}