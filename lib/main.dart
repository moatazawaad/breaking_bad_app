import 'package:breaking_bad_bloc/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(BreakingBadApp(
    appRouter: AppRouter(),
  ));
  // bool even = false;
  // if (even == false) {
  //   print("even");
  // }
  //
  // printMsg() => print('soft');
  // int test() => 123;
  //
  // print(test());
  // printMsg();
}

class BreakingBadApp extends StatelessWidget {
  const BreakingBadApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
