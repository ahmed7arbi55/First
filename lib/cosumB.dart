import 'package:flutter/material.dart';
import 'package:test9/main.dart';
import 'package:test9/second.dart';
class costumB extends StatelessWidget {
  final Color colorW;
  final String text;
  final String img;
  final String tap;
  costumB({super.key, required this.text, required this.colorW,required this.img ,required this.tap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: 
     Container(
      
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)), color: colorW),
        height: 150,
        width: 250,
        padding: EdgeInsets.all(30),
        child: Row(
          children: [
            Expanded(
           //   padding: const EdgeInsets.only(right: 0),
              child: Text(
              '$text ',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 23.1,
                  color: Colors.black),
                        ),
            ), 
           Image.asset("$img",fit: BoxFit.cover, alignment: Alignment.centerRight,
           height: 90,
           width: 90,
           
           )
          ]
        )
        
 ),
    onTap: () {
 Navigator.of(context).push(
MaterialPageRoute(builder: (context) => FirstPage())//اكتب هنا اسم الصفحه او اعملها ب فوق لنتروق"variable"
);
 },
    
    );
  }
}
class Botton_nav extends StatelessWidget{

Botton_nav({super.key});
Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
         onTap: (value) {
        if (value == 0) Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage()),);
        if (value == 2)Navigator.push(context,MaterialPageRoute(builder: (context) => FirstPage()),);
      },
        
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedFontSize: 18,
        unselectedFontSize: 15,
        
        items:[ 
          
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home",backgroundColor: Colors.white),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile"),
      BottomNavigationBarItem(icon: Icon(Icons.saved_search_outlined),label: "Saves"),

      ]),);
}}