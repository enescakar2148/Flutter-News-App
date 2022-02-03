import 'package:flutter/material.dart';
import 'package:news_app_ui/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Yeni Haberler"),
        automaticallyImplyLeading: true,
        leading: GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: const Text("On Tap"),
                      content: const Text("Menu button is clicked !"),
                      actions: [
                        TextButton(
                            onPressed: () => {Navigator.pop(context)},
                            child: const Text("Okay"))
                      ],
                    ));
          },
          child: const Icon(Icons.menu),
        ),
      ),
      // Container içerisine row veya column alır
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "News Title",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    dummyDes,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      "34 minute ago",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Image.asset(
              "lib/assets/images/testPhoto.jpg",
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
