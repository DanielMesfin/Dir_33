import 'package:education_app_ui/widgets/news_card.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 5),
          child:ListView(
            children:const [
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
            ],
          ))
      ),
    );
  }

}