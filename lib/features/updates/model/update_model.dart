import 'package:whatsapp_clone/core/shared/model/user_model.dart';

class UpdateModel {
  final UserModel user;
  final DateTime updateTime;
  final List<String> stores;

  UpdateModel({
    required this.user,
    required this.updateTime,
    this.stores = const [],
  });

  static List<UpdateModel> get updateList => [
    UpdateModel(
      user: UserModel(
        id: 1,
        name: "Mohamed Ahmed",
        phoneNumber: '01118414599',
        profilePictureUrl:
            "https://www.shutterstock.com/image-photo/smiling-cheerful-businessman-office-taking-600nw-2259790523.jpg",
      ),
      updateTime: DateTime.now().subtract(const Duration(minutes: 30)),
      stores: [
        "https://www.shutterstock.com/image-photo/smiling-cheerful-businessman-office-taking-600nw-2259790523.jpg",
        "https://img.freepik.com/free-photo/young-people-using-reels_23-2150038634.jpg?semt=ais_hybrid&w=740&q=80",
        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=400",
      ],
    ),
    UpdateModel(
      user: UserModel(
        id: 3,
        name: "John Doe",
        phoneNumber: '01987654321',
        profilePictureUrl:
            "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400",
      ),
      updateTime: DateTime.now().subtract(const Duration(hours: 5)),
      stores: [
        "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400",
      ],
    ),
    UpdateModel(
      user: UserModel(
        id: 1,
        name: "Mohamed Ahmed",
        phoneNumber: '01118414599',
        profilePictureUrl:
            "https://img.freepik.com/free-photo/young-people-using-reels_23-2150038634.jpg?semt=ais_hybrid&w=740&q=80",
      ),
      updateTime: DateTime.now().subtract(const Duration(minutes: 30)),
      stores: [
        "https://img.freepik.com/free-photo/young-people-using-reels_23-2150038634.jpg?semt=ais_hybrid&w=740&q=80",

        "https://www.shutterstock.com/image-photo/smiling-cheerful-businessman-office-taking-600nw-2259790523.jpg",
        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=400",
      ],
    ),
    UpdateModel(
      user: UserModel(
        id: 1,
        name: "Mohamed Ahmed",
        phoneNumber: '01118414599',
        profilePictureUrl:
            "https://www.shutterstock.com/image-photo/smiling-cheerful-businessman-office-taking-600nw-2259790523.jpg",
      ),
      updateTime: DateTime.now().subtract(const Duration(minutes: 30)),
      stores: [
        "https://www.shutterstock.com/image-photo/smiling-cheerful-businessman-office-taking-600nw-2259790523.jpg",
        "https://img.freepik.com/free-photo/young-people-using-reels_23-2150038634.jpg?semt=ais_hybrid&w=740&q=80",
        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=400",
      ],
    ),
    UpdateModel(
      user: UserModel(
        id: 3,
        name: "John Doe",
        phoneNumber: '01987654321',
        profilePictureUrl:
            "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400",
      ),
      updateTime: DateTime.now().subtract(const Duration(hours: 5)),
      stores: [
        "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400",
      ],
    ),
    UpdateModel(
      user: UserModel(
        id: 1,
        name: "Mohamed Ahmed",
        phoneNumber: '01118414599',
        profilePictureUrl:
            "https://img.freepik.com/free-photo/young-people-using-reels_23-2150038634.jpg?semt=ais_hybrid&w=740&q=80",
      ),
      updateTime: DateTime.now().subtract(const Duration(minutes: 30)),
      stores: [
        "https://img.freepik.com/free-photo/young-people-using-reels_23-2150038634.jpg?semt=ais_hybrid&w=740&q=80",

        "https://www.shutterstock.com/image-photo/smiling-cheerful-businessman-office-taking-600nw-2259790523.jpg",
        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=400",
      ],
    ),
  ];
}
