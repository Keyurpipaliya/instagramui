import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/images/image1.JPG"),),
              ),
              ),
              ),
                title: Text(
                  "Keyur Pipaliya",),
                subtitle: Text(
                  "Surat, Gujarat",),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage("assets/images/image2.JPG",))
                ),
              ),
              ListTile(
                leading: Wrap(
                  spacing: 10,
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 32),
                    SvgPicture.asset('assets/images/comment.svg',
                      width: 30,
                    ),
                    SvgPicture.asset('assets/images/message_icons.svg',
                    ),
                  ],
                ),
                trailing: Icon(Icons.bookmark_add_outlined, size: 35, color: Colors.black,),
              ),
              ListTile(
                ,Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 8),
                  child:
                  Text("1000 Likes", style: TextStyle(
                  fontSize: 5,
                  fontWeight: FontWeight.w700,
                ),
                ),
                ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 18),
                  child:
                  Text("View all 15 comments", style: TextStyle(
                  fontSize: 5,
                  fontWeight: FontWeight.w700,
                ),
          ),
          ),
          ],
              ),
              Row(
              children: [
                  Padding(padding: EdgeInsets.only(left: 18),
                    child:
                    Text("View all is 15 comments", style: TextStyle(
                    fontSize: 5,
                    fontWeight: FontWeight.w700,
          ),
          ),
          ),
            ],
          ),
          ),
          )
        }
    );
  }
}
