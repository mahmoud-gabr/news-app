class ArticleModel {
  final String? imge;
  final String title;
  final String? subTitle;
  ArticleModel({
    required this.imge,
    required this.subTitle,
    required this.title,
  });
  factory ArticleModel.fromJson(json){
    return ArticleModel(
          imge: json['urlToImage'],
          subTitle: json['description'],
          title: json['title'],
        );
  }
}
