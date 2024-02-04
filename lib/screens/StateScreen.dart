import 'package:flutter/material.dart';

class StateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 200).floor(); // 200, her bir kartın minimum genişliğidir

    return Scaffold(
      appBar: AppBar(
        title: Text("Emlak İlanları"),
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
  Ilan(image: 'assets/images/ev1.jpg', text: 'Şehir Merkezinde 2+1 Daire'),
  Ilan(image: 'assets/images/ev2.jpg', text: 'Bahçeli Müstakil Ev'),
  Ilan(image: 'assets/images/ev3.jpg', text: 'Deniz Manzaralı Villa'),
  Ilan(
      image: 'assets/images/ev4.png',
      text: 'GÜZEL İNŞAATTAN BEYLİKDÜZÜ MARMARA '),
  Ilan(
      image: 'assets/images/ev5.png',
      text: 'GÖRÜKLE HİLTON 9 DA 2+1 SATILIK EŞYALI DAİRE'),
  Ilan(
      image: 'assets/images/ev6.png',
      text: 'Samsun Atakum 4. Kat daire Ömürevler '),
  Ilan(
      image: 'assets/images/ev7.png',
      text: 'ALANDEREDE İSKANLI KOMBİ PETEKLİ MÜSTAKİL '),
  Ilan(
      image: 'assets/images/ev8.png',
      text: 'BEYLİKDÜZÜ YAŞAM VADİSİNDE 3+1 ARA KAT '),
];

// İlan sınıfı
class Ilan {
  final String image;
  final String text;

  Ilan({required this.image, required this.text});
}
