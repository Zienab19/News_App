import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('News', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),),
             Text('Cloud', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.orange),),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(slivers:[ 
          SliverToBoxAdapter(child: CategoryListView(),),
          SliverToBoxAdapter(child: SizedBox(height: 12,),),
          NewsListViewBuilder(category: 'General')
          ]),
      ),
    );
  }
}
