class UserModel {
  final int id;
  final String name;
  final String phoneNumber;

  final String? profilePictureUrl;

  UserModel({
    required this.id,
    required this.name,
    this.profilePictureUrl,
    required this.phoneNumber,
  });
}
