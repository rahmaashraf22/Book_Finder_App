class BooksModel {
  final String title;
  final String author;
  final String description;

  BooksModel({
    required this.title,
    required this.author,
    required this.description,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) {
    return BooksModel(
      title: json['title'] ?? 'No Title',
      author: json['author'] ?? 'No Author',
      description: json['description'] ?? 'No Description',
    );
  }
}
