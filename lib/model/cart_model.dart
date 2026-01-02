class CartModel {
  final String imageUrl;
  final String name;
  int quantity;
  final String unit;
  final double discount;
  final double price;
  int amount;

  CartModel({
    required this.imageUrl,
    required this.name,
    this.quantity = 1,
    required this.unit,
    required this.discount,
    required this.price,
    required this.amount,
  });
}
