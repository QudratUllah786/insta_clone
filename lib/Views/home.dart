import 'package:flutter/material.dart';
import 'package:project2/Views/ulit.dart';
import 'package:project2/Views/user_posts.dart';
class Home extends StatelessWidget {
  final List = ['Qudrat', 'Bilal', 'Haider', 'Qasim', 'Abubaker', 'Hamza'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram"),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: List.length,
                itemBuilder: (context, index) {
                  return Bubble(text: List[index]);
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: List.length,
                itemBuilder: (context, index) {
                  return Posts(post: List[index]);
                }),
          )
        ],
      ),
    );
  }
}
