import 'package:flutter/material.dart';

 class bottambar extends StatelessWidget {
   const bottambar({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return BottomAppBar(
       child: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         selectedItemColor: Colors.black,
         showSelectedLabels: false,
         showUnselectedLabels: false,
         iconSize: 30,

         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
           BottomNavigationBarItem(icon: Image.asset(""), label: 'reels'),
           BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
           BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_rounded), label: 'favorite'),
           BottomNavigationBarItem(icon: CircleAvatar(
             backgroundImage: AssetImage("assets/images/image1.JPG"),
     ),   label: 'user'),
         ],
       ),
     );
   }
 }
