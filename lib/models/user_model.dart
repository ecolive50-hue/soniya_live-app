class UserModel {
  final String userId;
  final String name;
  final int coins;
  final String avatar;

  UserModel({
    required this.userId,
    required this.name,
    required this.coins,
    required this.avatar,
  });

  // 🔁 JSON → Dart
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['userId'] ?? '',
      name: json['name'] ?? '',
      coins: json['coins'] ?? 0,
      avatar: json['avatar'] ??
          "https://ui-avatars.com/api/?name=${json['name']}",
    );
  }

  // 🔁 Dart → JSON
  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "name": name,
      "coins": coins,
      "avatar": avatar,
    };
  }
}