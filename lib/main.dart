import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/init/routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appRouter = AppRouter();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}

