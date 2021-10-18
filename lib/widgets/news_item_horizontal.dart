import 'package:flutter/material.dart';
import 'package:newsapp/model/articles.dart';
import 'package:newsapp/ui/detail_page.dart';

class NewsHeadLine extends StatelessWidget {
   // membuat var untuk menampung data daari model
   final Article article;
   NewsHeadLine({ required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            // article kiri = parameter dari detailPage
            //article kanan = var dari Newsheaadline ini yg extends dari Model
            builder: (context) => DetailPage(article: article,)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(article.urlToImage)
                )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.1, 0.9],
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.white.withOpacity(0.1),
                  ]
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
