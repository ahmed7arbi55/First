import 'package:flutter/material.dart';
import 'package:test9/cosumB.dart';
import 'package:test9/main.dart';
//import 'package:test9/main.dart';
class SecondPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
         onTap: (value) {
        if (value == 0) Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage()),);
        if (value == 2)Navigator.push(context,MaterialPageRoute(builder: (context) => FirstPage()),
        );
      },
        currentIndex: 0,
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedFontSize: 18,
        unselectedFontSize: 15,
        items:[ 
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home",backgroundColor: Colors.white),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile"),
      BottomNavigationBarItem(icon: Icon(Icons.saved_search_outlined),label: "Saves"),

      ]),
      appBar:  AppBar(
        backgroundColor: Color.fromARGB(255, 249, 249, 249),
        toolbarHeight: 60,
        leading: CircleAvatar(
         backgroundImage: AssetImage("assets/user.png")
        ),
      iconTheme:  IconThemeData(),
      title: Text('Harbi',style:TextStyle(fontWeight: FontWeight.w500,color: const Color.fromARGB(255, 0, 0, 0)) ,),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
 Container(
            height: 30,
          ),
          costumB(
            text: "Learn    ",colorW:Colors.orange ,img: "assets/Woman learns a language from online course.png",tap: 'FirstPage',
          ),

           Container(
            height: 30,
          ),
          costumB(
            text: "From sign to words",colorW:const Color.fromARGB(255, 0, 255, 60) ,img: "assets/Woman teaches online language courses.png",tap: '',
          ),
           Container(
            height: 30,
          ),
          costumB(
            text: "From words to sign    ",colorW:Color.fromARGB(255, 0, 51, 255) ,img: "assets/woman walking and filming on a camera.png",tap: '',
          ),
           Container(
            height: 30,
          ),
           Container(
            height: 30,
          ),
      
          ],
        )
      ),
    );
  }
}

