import 'dart:convert';
import 'dart:core';


import 'package:news_app/Models/article_model.dart';
import 'package:http/http.dart' as http;

class ApiService{
  final durl=Uri.parse("http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey={API KEY}");

  Future<List<article>> getarticle() async{
    http.Response res=await http.get(durl);

    if(res.statusCode==200){
      Map<String,dynamic> json=jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<article> articles=body.map((dynamic item)=> article.fromJson(item)).toList();
      return articles;
    }else{
      throw("Cant get articles");
    }
      
  }
}