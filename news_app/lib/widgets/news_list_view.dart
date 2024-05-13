import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';


class NewsListView extends StatelessWidget {
final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      return NewsTile(
        articleModel: articles[index],
      );
    },
    childCount: articles.length
    ),
    );
  }
}
