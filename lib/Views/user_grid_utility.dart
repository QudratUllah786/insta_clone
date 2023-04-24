import 'package:flutter/material.dart';
class UserGrid extends StatelessWidget {
  const UserGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            color: Colors.deepPurple[100],
          ),
        );
        });
  }
}
