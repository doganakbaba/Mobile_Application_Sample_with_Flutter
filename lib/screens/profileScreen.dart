import 'package:flutter/material.dart';
import 'package:navigation_app/screens/homeScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your profile "),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ProfileItem(
              avatar: 'assets/images/avatar.jpg',
              name: "Dogan Akbaba",
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.person),
              title: "doganakbaba",
              onTap: () {},
            ),
              Divider(),
              MenuItem(
              icon: Icon(Icons.email),
              title: "doganakbaba20@gmail.com",
              onTap: () {},
            ),
              Divider(),
              MenuItem(
              icon: Icon(Icons.phone),
              title: "+90 552 432 1268",
              onTap: () {},
            ),
            Divider(),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: Text("Geri Dön")),
          ],
        ),
      ),
    );
  }
}
