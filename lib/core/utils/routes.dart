import 'package:drogovat_mobile/features/drugs/presentation/views/drugs_view.dart';
import 'package:drogovat_mobile/features/monitor/presentation/views/monitor_view.dart';
import 'package:drogovat_mobile/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:drogovat_mobile/features/profile/presentation/views/profiles_view.dart';
import 'package:drogovat_mobile/features/registration/sign_up/presentation/views/sign_up_view.dart';
import 'package:drogovat_mobile/features/splash/presentation/views/splash_view.dart';
import 'package:get/get.dart';

import '../../features/registration/sign_in/presentation/views/sign_in_view.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: '/', page: () => const SplashView()),
  GetPage(name: '/onboarding', page: () => const OnBoardingView()),
  GetPage(name: '/SignIn', page: () => const SignInView()),
  GetPage(name: '/signUp', page: () => const SignUpView()),
  GetPage(name: '/monitorView', page: () => const MonitorView()),
  GetPage(name: '/profilesView', page: () => const ProfilesView()),
  GetPage(name: '/drugsView', page: () => const DrugsView()),
];