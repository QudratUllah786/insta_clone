import 'package:flutter/material.dart';
class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 7,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, int index){
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.blueAccent,
          ),
        );
      },
    );
  }
}
