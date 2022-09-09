import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key}) : super(key: key);

  final List storyItems = [
    {
      "pseudo": 'painTop',
      "photo": "assets/images/photo/photo-1.jpg",
    },
    {
      "pseudo": 'painTop',
      "photo": "assets/images/photo/photo-2.jpg",
    },
    {
      "pseudo": 'painTop',
      "photo": "assets/images/photo/photo-3.jpg",
    },
    {
      "pseudo": 'flyLike',
      "photo": "assets/images/photo/photo-4.jpg",
    },
    {
      "pseudo": 'amourOnemore',
      "photo": "assets/images/photo/photo-5.jpg",
    },
    {
      "pseudo": 'painTop',
      "photo": "assets/images/photo/photo-6.jpg",
    },
    {
      "pseudo": 'painTop',
      "photo": "assets/images/photo/photo-7.jpg",
    },
    {
      "pseudo": 'painTop',
      "photo": "assets/images/photo/photo-8.jpg",
    },
    {
      "pseudo": 'flyLike',
      "photo": "assets/images/photo/photo-9.png",
    },
    {
      "pseudo": 'amourOnemore',
      "photo": "assets/images/photo/photo-10.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
            // color: Colors.blue,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/story-circle.png',
                      height: 68,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      backgroundImage: AssetImage(story['photo']),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        }).toList(),
        // [
        // Container(
        //   height: 100,
        //   width: 50,
        //   color: Colors.blue,
        //   margin: const EdgeInsets.symmetric(horizontal: 5),
        // ),
        // ],
      ),
    );
  }
}
