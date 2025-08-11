class UserModel {
  final String id;
  final String name;
  final String email;
  final String profileImage;
  final String role;
  final double personalProgress;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.profileImage,
    required this.role,
    required this.personalProgress,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      name: data['name'],
      email: data['email'],
      profileImage: data['profileImage'],
      role: data['role'],
      personalProgress: data['personalProgress'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profileImage': profileImage,
      'role': role,
      'personalProgress': personalProgress,
    };
  }
}
