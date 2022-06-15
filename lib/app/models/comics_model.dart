class ComicsModel {
  int available;
  List<String> items;

  ComicsModel({
    required this.available,
    required this.items,
  });

  factory ComicsModel.fromMap(Map<String, dynamic> map) {
    return ComicsModel(
      available: map['available'],
      items: map['items'],
    );
  }
}
