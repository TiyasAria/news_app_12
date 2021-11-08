import 'package:flutter/foundation.dart';
import 'package:newsapp/model/articles.dart';

class BookmarkModel extends  ChangeNotifier{
  List<Article> articles = [];

  void addToBookmark(Article article){
    articles.add(article);
    notifyListeners();
  }

  void removeFromBookmark(Article article){
    articles.remove(article);
    notifyListeners();
  }
}