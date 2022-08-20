import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Screens/article_page.dart';
import 'package:news_app/main.dart';


Widget CustomTile(article articles, BuildContext context){
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(
                    articles: articles
                  )));
    },
    child: Container(
       margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(8.0),
      
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: 200,
                width: double.infinity,
              decoration: BoxDecoration(
            

              image: DecorationImage(
                  image: NetworkImage(articles.urlToImage.toString()), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          SizedBox(
            height: 8,
          ),

           Text(
            articles.title.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
           ),   
              
            ],
          ),
    ),
  );
}