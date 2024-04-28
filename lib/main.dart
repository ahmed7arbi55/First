import 'package:flutter/material.dart';
import 'package:test9/cosumB.dart';
import 'package:test9/second.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class FirstPage extends StatelessWidget {


  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
        bottomNavigationBar: BottomNavigationBar(
         onTap: (value) {
        if (value == 0) Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage()),);
         if (value == 1) Navigator.push(context,MaterialPageRoute(builder: (context) => FirstPage()),);
      },
        currentIndex: 2,
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedFontSize: 18,
        unselectedFontSize: 15,
        items:[ 
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home",backgroundColor: Colors.white),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile"),
      BottomNavigationBarItem(icon: Icon(Icons.saved_search_outlined),label: "Saves"),

      ]),
      appBar: AppBar(
        toolbarHeight: 60,
        leading: CircleAvatar(
         backgroundImage: AssetImage("assets/user.png")
        ),
      iconTheme:  IconThemeData(),
      title: Text('Learning Time',style:TextStyle(fontWeight: FontWeight.w500) ,),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 30,
          ),
          costumB(
            text: "Alphabet    ",colorW:Colors.orange ,img: "assets/a (1) 1.png",tap: '',
          ),
          Container(
            height: 30
          ),
          //second
          costumB(
            text: "Numbers   ",colorW: Color.fromARGB(255, 194, 91, 125),img: "assets/123 1.png",tap: '',           ),
            
        
          Container(
            height: 30,
          ),
          //third
          costumB(
            text: "Animals     ",colorW: Colors.purple ,img: "assets/dog 1.png",tap: '',
            
          ),


          Container(
            height: 30,
          ),


          //forth
          costumB(
            text: "Food           ",colorW: Color.fromARGB(255, 186, 17, 85),img: "assets/baby-food 1.png",tap: '',
            
          ),

          Container(
            height: 30,
          ),          
          costumB(
            text: "Clothes      ",colorW: Color.fromARGB(255, 204, 93, 74) ,img: "assets/shirt 1.png",tap: '',
            
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



