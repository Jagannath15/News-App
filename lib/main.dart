import 'package:flutter/material.dart';
import 'package:news_app/API/news_api_integrate.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Screens/news_article.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
     ApiService client = ApiService();
     return Scaffold(
      appBar: AppBar(
        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.newspaper),
            SizedBox(width:9 ,),
            Text("News App"),
          ],
        )
        
        
      ),

    
      body: FutureBuilder(
        future: client.getarticle(),
        builder: (BuildContext context, AsyncSnapshot<List<article>> snapshot) {
         
          if (snapshot.hasData) {
           
            List<article>? articles = snapshot.data;
            return ListView.builder(
             
              itemCount: articles!.length,
              itemBuilder: (context, index) =>
                  CustomTile(articles[index], context),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );

  }
}