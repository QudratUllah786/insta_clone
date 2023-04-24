import 'package:flutter/material.dart';
class Posts extends StatelessWidget {
final String post;
// final String lname;
Posts({
  required this.post,
// required this.lname,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                       color: Colors.grey,
                       shape: BoxShape.circle
                   ),
                 ),
               ),
               SizedBox(
                 width: 10,
               ),
               Text(post,
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 15,
                 ),),
             ],
           ),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Icon(Icons.menu),
               ),
             ],
           )
         ],

       ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 300,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5,top:2,right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.comment),
                  ),
                  Icon(Icons.share),
                ],
              ),
            Row(
              children: [
                Icon(Icons.bookmark),
              ],
            )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text("Like by "),

              Text(" Bilal ",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
              ),
              Text(" and "),
              Text(" Others ",style: TextStyle(fontWeight: FontWeight.bold)),
            ],

          ),
        ),
        SizedBox(height: 5),
        Row(
          children:[
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(post, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ),
            Text(' I just hate my dirty mind'),
          ]
        ),
        SizedBox(height: 5,)
      ],
    );
  }
}
