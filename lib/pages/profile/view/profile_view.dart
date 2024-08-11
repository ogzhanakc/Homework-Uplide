import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/pages/profile/view_model/profile_view_model.dart';
import 'package:provider/provider.dart';


@RoutePage()
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileViewModel>(builder: (context, viewModel, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Profile View"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(viewModel.userModel!.photoUrl),
            Text(viewModel.userModel!.userName),
            Text(viewModel.userModel!.firstName),
            Text(viewModel.userModel!.lastName),
            Text(viewModel.userModel!.city),
          ],
        ),
      );
    });
  }
}
