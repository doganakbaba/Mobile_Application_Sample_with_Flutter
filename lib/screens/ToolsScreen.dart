import 'package:flutter/material.dart';

class ToolsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ekran genişliğini al
    double screenWidth = MediaQuery.of(context).size.width;

    // Yatayda kaç tane öğe gösterileceğini belirle
    int crossAxisCount = (screenWidth / 200).floor(); // 200, her bir kartın minimum genişliğidir

    return Scaffold(
      appBar: AppBar(
        title: Text("Yedek Parça ve Aksesuar İlanları"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: ilanListesi.length,
        itemBuilder: (context, index) {
          return StateIlanWidget(
            image: ilanListesi[index].image,
            text: ilanListesi[index].text,
          );
        },
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

// İlan listesi
List<Ilan> ilanListesi = [
  Ilan(image: 'assets/images/yp1.png', text: 'ORJİNAL SKODA SUPERB JANT'),
  Ilan(
      image: 'assets/images/yp2.png',
      text: '2019/2022 MODEL COROLLA KAPUT'),
  Ilan(
      image: 'assets/images/yp3.png',
      text: 'PRIME CAR dan F10 525xd Sandık Motor '),
  Ilan(image: 'assets/images/yp4.png', text: 'Opel astra K 2018 model sol far'),
  Ilan(image: 'assets/images/yp5.png', text: 'Vibe 25 cm komple tesisat'),
  Ilan(
      image: 'assets/images/yp6.png',
      text: 'CHEVROLET CRUZE TESLA ANDROİD CARPLAY'),
  Ilan(
      image: 'assets/images/yp7.png',
      text: 'VOLKWAGEN GOLF7 PASSAT MULTİMEDYA'),
  Ilan(image: 'assets/images/yp8.png', text: 'BMW F36 BODY KİT M TECH'),
];

// İlan sınıfı
class Ilan {
  final String image;
  final String text;

  Ilan({required this.image, required this.text});
}
