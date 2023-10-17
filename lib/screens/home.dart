import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photography/screens/screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  static final String id = "home_page";
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 238, 238, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              bottom: 5.0,
              right: 10.0,
              top: 15.0,
            ),
            child: Text(
              "Best place to \nFind awesome photos",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              bottom: 5.0,
              right: 20.0,
              top: 15.0,
            ),
            child: Container(
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search),
                          ),
                          hintText: "Search for photo",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  bottom: 5.0,
                  right: 20.0,
                  top: 15.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "For you",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Recommend",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "Likes",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          colors: [
                            Colors.red,
                            Colors.grey.withOpacity(0.1),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    User_Card(
                      image_user: "assets/images/usr1.jfif",
                      user_name: "Mohamed Ali Yahye",
                      user_location: "Dhahar, Somaliland - Somalia",
                      post_time: "20 min ago",
                      post_image: "assets/images/1.jpg",
                      user_sub_name: "mohamedali",
                      followers: "150.98k",
                      following: "11",
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    User_Card(
                      image_user: "assets/images/usr2.jpg",
                      user_name: "Yahye Hassan Mohamed",
                      user_location: "Guriel, Galmudug-Somalia",
                      post_time: "30 min ago",
                      post_image: "assets/images/4.jpg",
                      user_sub_name: "yahyehassan",
                      followers: "510k",
                      following: "231",
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    User_Card(
                      image_user: "assets/images/usr3.jpg",
                      user_name: "Abdi Ali Ahmed",
                      user_location: "Bardhere, Jubland - Somalia",
                      post_time: "10 min ago",
                      post_image: "assets/images/5.jfif",
                      user_sub_name: "abdiali",
                      followers: "960.4k",
                      following: "325",
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    User_Card(
                      image_user: "assets/images/usr4.jpg",
                      user_name: "Abshir Ali Muse",
                      user_location: "Jowhar, Hirshabeele - Somalia",
                      post_time: "50 min ago",
                      post_image: "assets/images/6.jpg",
                      user_sub_name: "abshirali",
                      followers: "210k",
                      following: "3",
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class User_Card extends StatelessWidget {
  const User_Card({
    super.key,
    required this.image_user,
    required this.user_name,
    required this.user_location,
    required this.post_time,
    required this.post_image,
    required this.user_sub_name,
    required this.followers,
    required this.following,
    this.select_image,
  });
  final String image_user;
  final String user_name;
  final String user_location;
  final String post_time;
  final String post_image;
  final String user_sub_name;
  final String followers;
  final String following;
  final File? select_image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return User_Screen(
                  user_name: user_name,
                  user_image: image_user,
                  user_sub_name: user_sub_name,
                  followers: followers,
                  following: following,
                  user_image_post: post_image,
                  image_location: user_location,
                );
              }));
              // Navigator.pushNamed(context, User_Screen.id);
            },
            child: ListTile(
              leading: ClipRRect(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image_user),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              title: Text(
                user_name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                user_location,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Text(
                post_time,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    width: 350,
                    height: 230,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(post_image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 28.0,
                          right: 20.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.link_off_outlined,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: 6,
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 20.0,
              );
            },
          ),
        )
      ],
    );
  }
}
