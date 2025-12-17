class GiftModel {
  final String id;
  final String name;
  final int price;
  final String emoji;

  GiftModel({
    required this.id,
    required this.name,
    required this.price,
    required this.emoji,
  });
}

final List<GiftModel> demoGifts = [
  GiftModel(id: '1', name: 'Rose', price: 10, emoji: '🌹'),
  GiftModel(id: '2', name: 'Heart', price: 20, emoji: '❤️'),
  GiftModel(id: '3', name: 'Fire', price: 50, emoji: '🔥'),
  GiftModel(id: '4', name: 'Crown', price: 100, emoji: '👑'),
];