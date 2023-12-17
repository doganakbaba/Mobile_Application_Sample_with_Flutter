import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kayıt Ol"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Kullanıcı Adı: "),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(49, 138, 138, 138),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı adınız",
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("Email: "),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(49, 138, 138, 138),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "sample@example.com",
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("Şifre: "),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(49, 138, 138, 138),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Şifrenizi Giriniz",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, "/home",(Route<dynamic> route) =>false);
                    },
                    child: Text("Kayıt Ol"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
