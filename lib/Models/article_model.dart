import 'package:news_app/Models/source_model.dart';

class article{
  source? Source;

  
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String?publishedAt;
  String? content;
  

   article(
      {this.Source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

    
      factory article.fromJson(Map<String, dynamic> json) {
    return article(
      Source: source.fromJson(json['source']),
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );
  }
}