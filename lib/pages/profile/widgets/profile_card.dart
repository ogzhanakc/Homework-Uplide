import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/init/routes/app_router.dart';
import 'package:flutter_homework_uplide/pages/profile/model/user_model.dart';
import 'package:flutter_homework_uplide/pages/profile/view/profile_view.dart';
import 'package:flutter_homework_uplide/pages/profile/view_model/profile_view_model.dart';
import 'package:provider/provider.dart';

class ProfileCard extends StatelessWidget {

  const ProfileCard({super.key,l});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileViewModel>(builder: (context, viewModel, child) {
      return InkWell(
        onTap: () => context.router.push(ProfileRoute()),
        child: Card(
          child: Column(
            children: [
              Image.network(viewModel.userModel!.photoUrl),
              Text(viewModel.userModel!.userName),
              Text(viewModel.userModel!.firstName),
              Text(viewModel.userModel!.lastName),
              Text(viewModel.userModel!.city),
            ],
          ),
        ),
      );
    });
  }
}
