// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/init/routes/app_router.dart';
import 'package:flutter_homework_uplide/pages/profile/view_model/profile_view_model.dart';
import 'package:provider/provider.dart';

class SplashScreenViewModel extends ChangeNotifier {


  Future<void> routeToHome(BuildContext context) async {

    await Future.delayed(Duration(seconds: 2));
    Provider.of<ProfileViewModel>(context, listen: false).setUser();
    
    context.router.replace(HomeRoute());
    notifyListeners();
  }
}
