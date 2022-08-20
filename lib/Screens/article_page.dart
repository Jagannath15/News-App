

import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';


class ArticlePage extends StatelessWidget {
  final article articles;

   const ArticlePage({required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articles.title.toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 210.0,
              width: double.infinity,
              decoration: BoxDecoration(
                //let's add the height

                image: DecorationImage(
                    image: NetworkImage(articles.urlToImage.toString()), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                articles.Source!.name.toString(),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              articles.description.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}