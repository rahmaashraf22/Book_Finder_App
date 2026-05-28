class BookShelfModel {
  final String kind;
  final int id;
  final String selfLink;
  final String title;
  final String description;
  final String access;
  final String updated;
  final String created;
  final int volumeCount;
  final String volumesLastUpdated;

  BookShelfModel({
    required this.kind,
    required this.id,
    required this.selfLink,
    required this.title,
    required this.description,
    required this.access,
    required this.updated,
    required this.created,
    required this.volumeCount,
    required this.volumesLastUpdated,
  });

  // factory BookShelfModel.fromJson(Map<String, dynamic> json) {
  //   return BookShelfModel(
  //     kind: json['kind'] ?? '',
  //     id: json['id'] ?? 0,
  //     selfLink: json['selfLink'] ?? '',
  //     title: json['title'] ?? '',
  //     description: json['description'] ?? '',
  //     access: json['access'] ?? '',
  //     updated: json['updated'] ?? '',
  //     created: json['created'] ?? '',
  //     volumeCount: json['volumeCount'] ?? 0,
  //     volumesLastUpdated: json['volumesLastUpdated'] ?? '',
  //   );
  // }
}

// {
//   "kind": "books#bookshelf",
//   "id": integer,
//   "selfLink": string,
//   "title": string,
//   "description": string,
//   "access": string,
//   "updated": datetime,
//   "created": datetime,
//   "volumeCount": integer,
//   "volumesLastUpdated": datetime
// }
