import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/pages/profile/model/user_model.dart';
import 'package:flutter_homework_uplide/pages/profile/service/profile_service.dart';

import '../../../core/init/get_it/app_get_it.dart';

class ProfileViewModel extends ChangeNotifier {
  final _profileService = locator.get<ProfileService>();

  UserModel? _userModel;
  UserModel? get userModel => _userModel;

  void setUser() {
    _userModel = _profileService.getUser();
    notifyListeners();
  }
}
