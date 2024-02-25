import 'package:flutter/material.dart';


class StoriesSection extends StatelessWidget {
  final List<Story> stories = [
    Story('Ahmed', 'images/boy1.jpg'),
    Story('Mostafa', 'images/boy2.jpg'),
    Story('Mansour', 'images/boy3.jpg'),
    Story('Hayam', 'images/girl1.jpg'),
    Story('Lobna', 'images/girl2.jpg'),
    Story('Adham', 'images/boy4.jpg'),
    
  ];

   StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Container(
            width: 160.0,
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(stories[index].imagePath),
                ),
                Text(stories[index].name),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Story {
  final String name;
  final String imagePath;

  Story(this.name, this.imagePath);
}