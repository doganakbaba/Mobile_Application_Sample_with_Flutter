import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sahibinden"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Divider(),
            ProfileItem(
              avatar: 'assets/images/avatar.jpg',
              name: "Dogan Akbaba",
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            Expanded(
              child: Column(
                children: [
                  Divider(),
                  MenuItem(
                    title: "Vasıta",
                    icon: Icon(
                      Icons.directions_car,
                      size: 20,
                      color: Colors.red,
                    ),
                    onTap: () {},
                  ),
                  MenuItem(
                    title: "Emlak",
                    icon: Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.yellow,
                    ),
                    onTap: () {},
                  ),
                  MenuItem(
                    title: "Yedek Parça ve Aksesuar",
                    icon: Icon(
                      Icons.handyman,
                      size: 20,
                      color: const Color.fromARGB(255, 0, 57, 104),
                    ),
                    onTap: () {},
                  ),
                  MenuItem(
                    title: "Özel Ders Verenler",
                    icon: Icon(
                      Icons.front_loader,
                      size: 20,
                      color: Colors.green,
                    ),
                    onTap: () {},
                  ),
                  MenuItem(
                    title: "İş İlanları",
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 20,
                      color: const Color.fromARGB(255, 1, 92, 4),
                    ),
                    onTap: () {},
                  ),
                  MenuItem(
                    title: "Hayvanlar Alemi",
                    icon: Icon(
                      Icons.pets,
                      size: 20,
                      color: Colors.orange,
                    ),
                    onTap: () {},
                  ),
                  Divider(),
                  MenuItem(
                    title: "Ayarlar",
                    icon: Icon(
                      Icons.settings,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/settings");
                    },
                  ),
                  Divider(),
                  MenuItem(
                    icon: Icon(Icons.logout_outlined),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/welcome", (route) => false);
                    },
                    title: "Çıkış Yap",
                  ),
                ],
              ),
            ),
            Text(
              "Version 1.0.4",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text("Vasıta İlanları"),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                PhotoWithText(
                  image: 'assets/images/polo.jpg',
                  text: 'VOLKSWAGEN Polo 1.0 TSI COMFORTLINE HATCHBACK 2021',
                ),
                Divider(),
                PhotoWithText(
                  image: 'assets/images/civic_ies.jpg',
                  text: 'SERSERİDEN SERSERİYE GIRTLAK DOLUSU İES',
                ),
                  Divider(),
                  PhotoWithText(
                  image: 'assets/images/clio.jpg',
                  text: 'RENAULT CLİO TOUCH 1.5 DCI OTOMATİK 3.99 24 AY KREDİ İMKANI',
                ),
                  Divider(),
                  PhotoWithText(
                  image: 'assets/images/egea.jpg',
                  text: 'KESİNLİKLE SIFIR AYARINDA BOYA DEĞİŞEN HİÇ YOK DAHA ORJ 15 BİNDE',
                ),
                  Divider(),
                  PhotoWithText(
                  image: 'assets/images/g63.jpg',
                  text: 'SAHİBİNDEN G63 AMG BURMESTER 2022 BAYİ 4D DİSTRONİC',
                ),
                  Divider(),
                  PhotoWithText(
                  image: 'assets/images/rs6.jpg',
                  text: 'FC MOTORS VADİ AUDİ RS6 SERRAMİK+OPTİK+SOĞUTMA+HEADUP',
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final Function()? onTap;
  final String avatar;
  final String name;

  const ProfileItem({
    Key? key,
    this.onTap,
    required this.avatar,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(avatar),
                  radius: 32,
                ),
              ),
            ),
            SizedBox(width: 8),
            Text(name),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Icon icon;

  const MenuItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(width: 6),
            Text(title),
          ],
        ),
      ),
    );
  }
}

class PhotoWithText extends StatelessWidget {
  final String image;
  final String text;

  const PhotoWithText({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 150, 
          width: double.infinity, 
          fit: BoxFit.cover,
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
