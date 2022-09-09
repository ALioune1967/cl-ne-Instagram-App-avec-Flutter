import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({Key? key}) : super(key: key);

  final List postItems = [
    {
      "pseudo": 'LordRick',
      "photo": "assets/images/photo/photo-1.jpg",
      "photoProfil": "assets/images/profil/photo-1.jpg",
      "description": "Loock amazing, what do you like to see ?",
    },
    {
      "pseudo": 'LordRick',
      "photo": "assets/images/photo/photo-2.jpg",
      "photoProfil": "assets/images/profil/photo-2.jpg",
      "description": "Loock amazing, what do you like to see ?",
    },
    {
      "pseudo": 'LordRick',
      "photo": "assets/images/photo/photo-3.jpg",
      "photoProfil": "assets/images/profil/photo-3.jpg",
      "description": "Loock amazing, what do you like to see ?",
    },
    {
      "pseudo": 'LordRick',
      "photo": "assets/images/photo/photo-4.jpg",
      "photoProfil": "assets/images/profil/photo-4.jpg",
      "description": "Loock amazing, what do you like to see ?",
    },
    {
      "pseudo": 'LordRick',
      "photo": "assets/images/photo/photo-5.jpg",
      "photoProfil": "assets/images/profil/photo-5.jpg",
      "description": "Loock amazing, what do you like to see ?",
    },
    {
      "pseudo": 'LordRick',
      "photo": "assets/images/photo/photo-6.jpg",
      "photoProfil": "assets/images/profil/photo-6.jpg",
      "description": "Loock amazing, what do you like to see ?",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
              height: 50,
              // color: Colors.red,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post['photoProfil']),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    post['pseudo'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/verificationbadge.png',
                    height: 13,
                  ),
                  Expanded(child: Container()),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(post['photo']),
                fit: BoxFit.cover,
              )),
              // color: Colors.red,
              // margin: const EdgeInsets.only(top: 10),
              // child: Image.asset(post['photo']),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.message_outlined)),
                IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
                Expanded(child: Container()),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(
                      post['photoProfil'],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Aimé par ',
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: post['pseudo'],
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const TextSpan(
                            text: ' et ',
                            // style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const TextSpan(
                            text: '2500 autres personnes',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Voir plus',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Voir les 35 commentaires',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Il y a 16 min',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade400),
                      ),
                      Text('Traduction'),
                    ],
                  )
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
