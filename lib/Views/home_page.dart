import 'package:flutter/material.dart';
import 'package:project2/Views/user_account.dart';
import 'package:project2/Views/user_search.dart';
import 'package:project2/Views/user_shop.dart';

import 'home.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // navigate around the bottom bar
  int _selectedIndex = 0;
  var List = [
    Home(),
    SearchBar(),
    Text("Reels"),
    UserShop(),
    MyAccount(),

  ];
  void _navigateBottom(int index){
    setState((){
     _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
        type:  BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottom,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, ),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search,),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "reels"),
           BottomNavigationBarItem(icon: Icon(Icons.shop),label: "shop"),
           BottomNavigationBarItem(icon: Icon(Icons.person),label: "account"),
        ],
      ),
      body: Center(
        child: List[_selectedIndex],
      ),
    );
  }
}
