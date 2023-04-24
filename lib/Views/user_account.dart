import 'package:flutter/material.dart';
import 'package:project2/Views/tab1_account_util.dart';
import 'package:project2/Views/tab2_account_util.dart';
import 'package:project2/Views/tab3_account_util.dart';
import 'package:project2/Views/tab4_account_util.dart';
import 'package:project2/Views/ulit.dart';
class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  Column(
                    children: [
                      Text('350',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                      ),
                      Text('Posts',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('3450',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                      ),
                      Text('Likes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('237',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                      ),
                      Text('Followers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Qudrat',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)
                      ),
                      Text('I create apps and games',style: TextStyle(fontSize: 18)
                      ),
                      Text('https://www.youtube.com/',style: TextStyle(color: Colors.blue)
                      ),
                    ],
                  ),
                ),
             SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Ad Tools",style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Insights",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Bubble(text: 'Qudrat',),
                  Bubble(text: 'Akhtar',),
                  Bubble(text: 'Akbar',),
                  Bubble(text: 'Hafeez',),
                ],
              ),
            ),
            SizedBox(height: 5,),
            TabBar(
                tabs:[
                  Tab(icon: Icon(Icons.grid_3x3_outlined),),
                  Tab(icon: Icon(Icons.video_call),),
                  Tab(icon: Icon(Icons.shop),),
                  Tab(icon: Icon(Icons.person),),
                ] ),
            Expanded(
                child: TabBarView(
                  children: [
                    Tab1(),
                  Tab2(),
                    Tab3(),
                    Tab4(),

                  ],
                ))
          ],
        ),
      ),
    );
  }
}
