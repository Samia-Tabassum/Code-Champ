import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.all(1),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(60)
          ),
        ),
        actions: [
          GestureDetector(
              onTap:() {
              },
              child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color : Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Icon(Icons.notifications_sharp, color: Colors.black, size: 40,),
              )
          )
        ],
        title: RichText(
            text: TextSpan(
                text: "Hi, Emon",
                style: TextStyle(fontSize: 22, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: "\nWelcome back",
                      style: TextStyle(fontSize: 17, color: Colors.black)
                  )
                ]
            )
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(padding: EdgeInsets.only(top: 25.0),
        child: Column(
          children: [
            Text("Next contest in: ", style: TextStyle(
                color: Colors.black, fontSize: 23
            ),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Groups",
            icon: Icon(Icons.people_alt_outlined),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings_sharp),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle_sharp),
          )
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
