import 'package:flutter/material.dart';

class ToolsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yedek Parça ve Aksesuar İlanları"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          StateIlanWidget(
            image: 'assets/images/yp1.png',
            text: 'ORJİNAL SKODA SUPERB JANT',
          ),
          SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/yp2.png',
            text: '2019/2022 MODEL COROLLA ORJİNAL ÇIKMA KAPUT',
          ),
          SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/yp3.png',
            text: 'PRIME CAR dan F10 525xd Sandık Motor | GARANTİLİ BMW N47',
          ),
           SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/yp4.png',
            text: 'Opel astra K 2018 model sol far',
          ),
           SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/yp5.png',
            text: 'Vibe 25 cm komple tesisat',
          ),
           SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/yp6.png',
            text: 'CHEVROLET CRUZE TESLA ANDROİD MULTİMEDYA CARPLAY NAVİGASYON',
          ),
           SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/yp7.png',
            text: 'VOLKWAGEN GOLF7 PASSAT B8 TİGUAN MULTİMEDYA EKRANI 3G0919605D',
          ),
            SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/yp8.png',
            text: 'BMW F36 BODY KİT M TECH',
          ),
          
        ],
      ),
    );
  }
}

class StateIlanWidget extends StatelessWidget {
  final String image;
  final String text;

  const StateIlanWidget({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              image,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
