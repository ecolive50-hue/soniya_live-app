class LeaderboardModel {
  final String userId;
  final int coins;

  LeaderboardModel({
    required this.userId,
    required this.coins,
  });

  /// 🔹 From socket / API map
  factory LeaderboardModel.fromMap(Map<String, dynamic> map) {
    return LeaderboardModel(
      userId: map['userId'] ?? '',
      coins: map['coins'] ?? 0,
    );
  }

  /// 🔹 Convert leaderboard socket data
  /// backend format: { "user1": 100, "user2": 50 }
  static List<LeaderboardModel> listFromSocket(
      Map<String, dynamic> data) {
    final List<LeaderboardModel> list = [];

    data.forEach((key, value) {
      list.add(
        LeaderboardModel(
          userId: key,
          coins: value is int ? value : int.parse(value.toString()),
        ),
      );
    });

    // sort high → low
    list.sort((a, b) => b.coins.compareTo(a.coins));
    return list;
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'coins': coins,
    };
  }
}