class ProductModel {
  int? id;
  String? title, description, category, image;
  double? price;
  RatingModel? rating;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductModel.mapToModel(Map m1) {
    return ProductModel(
      id: m1['id'],
      title: m1['title'],
      price: m1['price'].toDouble(),
      description: m1['description'],
      category: m1['category'],
      image: m1['image'],
      rating: RatingModel.mapToModel(
        m1['rating'],
      ),
    );
  }
}

class RatingModel {
  double? rate;
  int? count;

  RatingModel({
    this.rate,
    this.count,
  });

  factory RatingModel.mapToModel(Map m1) {
    return RatingModel(
      rate: m1['rate'].toDouble(),
      count: m1['count'],
    );
  }
}
