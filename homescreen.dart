import 'package:flutter/material.dart';
import 'package:instagramui/widgets/bottambar_widget.dart';
import 'package:instagramui/widgets/post_widget.dart';
import 'package:instagramui/widgets/story.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: Icon(Icons.camera_alt_rounded,
       size: 40,
        color: Colors.grey[500],
       ),
        title: Text(
          "Instagram",
          style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'Keyur Pipaliya',
            fontSize: 30,
          ),
        ),

        actions: [
          IconButton(onPressed: () {},
            icon: Icon(Icons.search_rounded,
              size: 30,
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.message_sharp),
          ),
        ],
      ),
      body: Column(
        children: [
        StoryWidget(),
          Divider(
            color: Colors.grey,
          ),
          Expanded(child: PostWidget())
      ],),
      bottomNavigationBar: bottambar(),
    );
  }
}
