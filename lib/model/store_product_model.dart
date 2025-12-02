class StoreProductModel {
  final int id;
  final String productImageUrl;
  final String name;
  final String shortDetails;
  final String longDetails;
  final String category;
  final String categoryImage;
  final int quantity;
  final String unit;
  final double price;
  final double discountedPrice;
  final double rating;
  final bool isFavorite;

  StoreProductModel({
    required this.id,
    required this.productImageUrl,
    required this.name,
    required this.shortDetails,
    required this.longDetails,
    required this.category,
    required this.quantity,
    required this.unit,
    required this.price,
    required this.discountedPrice,
    required this.rating,
    required this.isFavorite,
    required this.categoryImage,
  });
}
