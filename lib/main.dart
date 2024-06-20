import 'package:drogovat_mobile/core/bloc_providers.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/sign_in_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'core/bloc_observer.dart';
import 'core/utils/cache_helper.dart';
import 'core/utils/constants.dart';
import 'core/utils/routes.dart';
import 'features/initial_page/presentation/views/initial_view.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();

  Widget widget;
  await CacheHelper.init();
  uId = CacheHelper.getData(key: 'uId');
  if (uId != null) {
    widget = const InitialView();
  } else {
    widget = const SignInView();
  }

  runApp(MyApp(
    screen: widget,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.screen,
  });

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProvider.allBlocProvider,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Drogovat',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: darkBlueColor),
          scaffoldBackgroundColor: backgroundColor,
          useMaterial3: false,
          fontFamily: 'Imprima',
        ),
        initialRoute: '/',
        getPages: pages,
        home: screen,
      ),
    );
  }
}
