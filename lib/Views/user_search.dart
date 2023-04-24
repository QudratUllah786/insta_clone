import 'package:flutter/material.dart';
import 'package:project2/Views/user_grid_utility.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.grey[300],
            child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                 children: [
                   Icon(Icons.search,color: Colors.grey[500],),
                 Text("Search",style: TextStyle(color: Colors.grey[500],),)
                 ],
                ),
              )
          ),
        ),
      ),
      body: UserGrid(),
    );
  }
}
