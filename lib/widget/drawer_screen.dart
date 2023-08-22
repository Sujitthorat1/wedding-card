import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(image:NetworkImage("https://images.pexels.com/photos/4599918/pexels-photo-4599918.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  fit: BoxFit.cover)
              ),
              child: DrawerHeader(

                child:Center(
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(8)
                    ),
                    child: const Center(child: Text("LOGIN")),
                  ),
              )),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.bag),
              title: Text("My Order"),
            ),
            const ListTile(
            leading: Icon(CupertinoIcons.square_favorites),
            title: Text("My Draft"),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.heart),
            title: Text("My Wishlist"),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.bag),
            title: Text("My Order"),
          ),
          const ListTile(
            leading: Icon(Icons.feedback_outlined),
            title: Text("Feedback"),
          ),
          const ListTile(
            leading: Icon(Icons.policy),
            title: Text("Privacy Policy"),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
          ),
    

          ],
        ),
      );
  }
}
