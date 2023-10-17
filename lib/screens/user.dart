import 'package:flutter/material.dart';
import 'package:photography/screens/screen.dart';

class User_Screen extends StatefulWidget {
  const User_Screen({
    super.key,
    required this.user_name,
    required this.user_sub_name,
    required this.user_image,
    required this.followers,
    required this.following,
    required this.user_image_post,
    required this.image_location,
  });
  static final String id = "user_page";
  final String user_name;
  final String user_sub_name;
  final String user_image;
  final String followers;
  final String following;
  final String user_image_post;

  final String image_location;
  @override
  State<User_Screen> createState() => _User_ScreenState();
}

class _User_ScreenState extends State<User_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 238, 238, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(widget.user_image),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  widget.user_name,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text("@" + widget.user_sub_name),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.followers,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Followers",
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Row(
                      children: [
                        Text(
                          widget.following,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Following",
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Transform.translate(
                  offset: Offset(0, 20),
                  child: Container(
                    padding: EdgeInsets.all(
                      10,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                            ),
                            elevation: 0,
                            height: double.infinity,
                            color: Color.fromRGBO(243, 83, 4, 1),
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                            ),
                            elevation: 0,
                            height: double.infinity,
                            color: Colors.transparent,
                            child: Text(
                              "Message",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Collection",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Likes",
                      style: TextStyle(
                        fontSize: 13,
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
                SizedBox(
                  height: 260,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 15.0,
                      );
                    },
                    itemBuilder: (context, index) {
                      return User_Collection_card(
                        image: widget.user_image_post,
                        photo_type: "photography",
                        photo_item: 4,
                        user_image: widget.user_image,
                        user_name: widget.user_name,
                        image_location: widget.image_location,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 15.0,
                      );
                    },
                    itemBuilder: (context, index) {
                      return User_Photo_Type_card();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class User_Collection_card extends StatelessWidget {
  const User_Collection_card({
    super.key,
    required this.image,
    required this.photo_type,
    required this.photo_item,
    required this.user_name,
    required this.user_image,
    required this.image_location,
  });
  final String image;
  final String photo_type;
  final int photo_item;
  final String user_name;
  final String user_image;

  final String image_location;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(
        15.0,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(
          15.0,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return User_Photo_Screen(
                  image: image,
                  user_image: user_image,
                  user_name: user_name,
                  image_location: image_location,
                );
              },
            ),
          );
        },
        child: Container(
          width: 350,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15.0,
            ),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.6),
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          photo_type,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          photo_item.toString() + " photos",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class User_Photo_Type_card extends StatelessWidget {
  const User_Photo_Type_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(
          5.0,
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "HD Photos",
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
