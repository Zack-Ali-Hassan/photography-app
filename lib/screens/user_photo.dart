import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class User_Photo_Screen extends StatefulWidget {
  const User_Photo_Screen(
      {super.key,
      required this.image,
      required this.user_image,
      required this.user_name,
      required this.image_location});
  static final String id = "user_photo_screen";
  final String image;
  final String user_image;
  final String user_name;
  final String image_location;
  @override
  State<User_Photo_Screen> createState() => _User_Photo_ScreenState();
}

class _User_Photo_ScreenState extends State<User_Photo_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 238, 238, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: BackButton(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
                color: Colors.red,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(widget.user_image),
                      ),
                      title: Text(
                        widget.user_name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              label: Text(
                widget.image_location,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15.0,
                right: 15.0,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: MasonryGridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                itemCount: 6,
                mainAxisSpacing: 12,
                crossAxisSpacing: 10,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        7.0,
                      ),
                      child: Image(
                        image: AssetImage("lib/images/image${index + 1}.jpg"),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
