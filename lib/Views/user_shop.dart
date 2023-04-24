import 'package:flutter/material.dart';
import 'package:project2/Views/shop_grid_utility.dart';
class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shop',
              style: TextStyle(
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(Icons.calendar_today_rounded),
                SizedBox(width: 10,),
                Icon(Icons.menu),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.search,color: Colors.grey[500],),
                      Text("Search",style: TextStyle(color: Colors.grey[500],),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: ShopGrid(),
          ),
        ],
      ),
    );
  }
}
