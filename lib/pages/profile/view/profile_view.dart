import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_uplide/core/constants/app_constants.dart';
import 'package:flutter_homework_uplide/pages/profile/view_model/profile_view_model.dart';
import 'package:flutter_homework_uplide/pages/profile/widgets/profile_card.dart';
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
        body: SizedBox(
          height: AppConstants().screenHeight(context)/2,
          child: Card(
              margin: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfilePhoto(url: viewModel.userModel!.photoUrl),
                  ProfileText(head: "User Name : ", body: viewModel.userModel!.userName,),
                  ProfileText(head: "Name Surname : ", body: "${viewModel.userModel!.firstName} ${viewModel.userModel!.lastName}" ,),
                  ProfileText(head: "City : ", body: viewModel.userModel!.city,),
            
                ],
              ),
            ),
        ),
      );
    });
  }
}
