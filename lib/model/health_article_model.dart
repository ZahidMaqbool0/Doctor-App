class HealthArticleModel {
  final String id;
  final String imageUrlArtical;
  final String nameArtical;
  final String nameAuthor;
  final String description;
  final String imageAuthor;
  final int totalLike;
  final int totalComment;
  final String date;
  final String readTime;
  final String categares;
  bool isBookmarked;

  HealthArticleModel({
    required this.id,
    required this.imageUrlArtical,
    required this.nameArtical,
    required this.nameAuthor,
    required this.description,
    required this.imageAuthor,
    required this.totalLike,
    required this.totalComment,
    required this.date,
    required this.readTime,
    required this.categares,
    this.isBookmarked = false,
  });
}
