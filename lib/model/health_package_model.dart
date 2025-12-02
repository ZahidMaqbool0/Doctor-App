class HealthPackageModel {
  final String imageUrl;
  final String Name;
  final double price;
  final double rating;
  final Map<String, String>? details;

  HealthPackageModel({
    required this.imageUrl,
    required this.Name,
    required this.price,
    required this.rating,
    this.details,
  });
}
