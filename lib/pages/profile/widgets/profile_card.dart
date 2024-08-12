// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_homework_uplide/core/constants/app_constants.dart';
import 'package:flutter_homework_uplide/core/init/routes/app_router.dart';
import 'package:flutter_homework_uplide/pages/profile/view_model/profile_view_model.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, l});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileViewModel>(builder: (context, viewModel, child) {
      return InkWell(
        onTap: () => context.router.push(ProfileRoute()),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfilePhoto(url: viewModel.userModel!.photoUrl),
                ProfileText(head: "User Name : ", body: viewModel.userModel!.userName,),
                ProfileText(head: "Name Surname : ", body: viewModel.userModel!.firstName + " " +viewModel.userModel!.lastName ,),
                ProfileText(head: "City : ", body: viewModel.userModel!.city,),
          
              ],
            ),
          ),
        ),
      );
    });
  }
}

class ProfilePhoto extends StatelessWidget {
  String url;
   ProfilePhoto({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(
          url,
        ),
        radius: AppConstants().screenWidth(context) / 6,
      ),
    );
  }
}

class ProfileText extends StatelessWidget {
  String head;
  String body;
  ProfileText({
    Key? key,
    required this.head,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            head,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(body),
        ],
      ),
    );
  }
}
