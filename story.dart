import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {

  List <dynamic> story = [
  {'assets/images/image2.JPG',"username","codetodo"},
  { 'assets/images/codetodo.png',"username","codetodo"},
  { 'assets/images/image3.jpg',"username","codetodo"},
  { 'assets/images/image4.jpg',"username","codetodo"},
  { 'assets/images/images5.jpg',"username","codetodo"},
  {  'assets/images/images6.jpg',"username","codetodo"},
  {  'assets/images/image7.jpg',"username","codetodo"},
  {  'assets/images/image8.jpg',"username","codetodo"},
  ];

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Padding(padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            ),
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  List.generate(story.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(7),
                      child: Column(
                        children: [
                          Container(
                            Text("Keyur Pipaliya"),
                          ),
                        ],
                      ),
                    ),
                  }),
                ],
              )
              List.generate(4, (index) {
              }),
            ],
          ),
        ],
        child:
        Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF962282),Color(0xFFEEA863)
              ]
            ),

          ),
          child: Container(
            width: 65,
            height: 65,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(
                color: Colors.grey,
                spreadRadius: 1
              )]
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: colors.grey,
                      spreadRadius: 1,
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('${story[index]["images"]}')),),
              ),
            ),
          ),
        ),
    ),
    );
  }
}
