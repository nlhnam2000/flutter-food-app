class Category {
  final int id;
  final String image;
  final String title;
  final bool selected;

  Category(
      {required this.id,
      required this.image,
      required this.title,
      required this.selected});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
        id: json['id'],
        image: json['image'],
        title: json['title'],
        selected: json['selected']);
  }
}
