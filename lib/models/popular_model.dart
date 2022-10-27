class Popular {
  final int id;
  final String image;
  final String title;
  final String weight;
  final double rating;
  final double price;
  final String sizeName;
  final int sizeNumber;
  final String crust;
  final int deliveryTime;
  final List<Ingredient> ingredients;

  const Popular(
      {required this.id,
      required this.image,
      required this.title,
      required this.weight,
      required this.rating,
      required this.price,
      required this.sizeName,
      required this.sizeNumber,
      required this.crust,
      required this.deliveryTime,
      required this.ingredients});

  factory Popular.fromJson(Map<String, dynamic> json) {
    return Popular(
        id: json['id'],
        image: json['image'],
        title: json['title'],
        weight: json['weight'],
        rating: json['rating'],
        price: json['price'],
        sizeName: json['sizeName'],
        sizeNumber: json['sizeNumber'],
        crust: json['crust'],
        deliveryTime: json['deliveryTime'],
        ingredients: json['ingredients']);
  }
}

class Ingredient {
  final int id;
  final String name;
  final String image;

  const Ingredient({required this.id, required this.name, required this.image});

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(id: json['id'], name: json['name'], image: json['image']);
  }
}
