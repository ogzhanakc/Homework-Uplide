import 'package:flutter_homework_uplide/pages/profile/model/user_model.dart';

class ProfileService {
  UserModel createUser(UserModel newUser) {
    UserModel user = newUser;
    return user;
  }

  UserModel getUser() {
    final user = createUser(UserModel(
        "https://fastly.picsum.photos/id/192/200/300.jpg?hmac=UAXa6z_MKaSlyDXrwECLl6XBp0jzyV3C2eSvsfMi_uc",
        "Oakca",
        "Oğuzhan",
        "Akça",
        "Kayseri"));
    return user;
  }
}
