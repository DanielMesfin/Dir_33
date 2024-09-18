import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {

  return GFCard(
            boxFit: BoxFit.cover,
            titlePosition: GFPosition.start,
            image: Image.asset(
              'Images/programming.png',
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            showImage: true,
            title: const GFListTile(
              avatar:  GFAvatar(
                backgroundImage: AssetImage('Images/programming.png'),
              ),
              titleText: 'Game Controllers',
              subTitleText: 'PlayStation 4',
            ),
            content: const Text("Some quick example text to build on the card"),
            buttonBar:const GFButtonBar(
              crossAxisAlignment: WrapCrossAlignment.end,
            
              children: <Widget>[
                GFAvatar(
                  backgroundColor: GFColors.PRIMARY,
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
                GFAvatar(
                  backgroundColor: GFColors.SECONDARY,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                GFAvatar(
                  backgroundColor: GFColors.SUCCESS,
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
  }
}