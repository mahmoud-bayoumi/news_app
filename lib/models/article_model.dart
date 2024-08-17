class ArticleModel {
  final String? image;
  final String title;
  final String? description;
  final String url; 
  const ArticleModel( 
      {required this.title, required this.image, required this.description , required this.url});

  factory ArticleModel.fromJson(Map<String,dynamic> json){
    return ArticleModel(
        title: json['title'],
        image: json['urlToImage'],
        description: json['description'],
        url: json['url']); 
  }
}
