import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel articleModel;

  const NewsTile({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.network(
              articleModel.image?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLlfM2DNN6lvEpPP5ZuZORrV40_x6vGVrOSw-k1h2P8HWMaAB-mg2Fi2rmq60xdpfI4Q&usqp=CAU',
              fit: BoxFit.fill,
              height: 230,
              width: double.infinity,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            articleModel.description?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
