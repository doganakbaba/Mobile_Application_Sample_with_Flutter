import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 200).floor(); // 200, her bir kartın minimum genişliğidir

    return Scaffold(
      appBar: AppBar(
        title: Text("Özel Ders İlanları"),
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
  Ilan(image: 'assets/images/ders1.png', text: 'ARADIĞIN İNGİLİZCE KURSU'),
  Ilan(image: 'assets/images/ders2.png', text: 'Özel ders, ödev takip ve konu pekiştirme.'),
  Ilan(image: 'assets/images/ders3.png', text: 'Severek ve eğlenerek İngilizcemizi geliştirelim :)'),
  Ilan(
      image: 'assets/images/ders4.png',
      text: 'İNGİLİZCEYİ HATASIZ KONUŞUN'),
  Ilan(
      image: 'assets/images/ders5.png',
      text: 'KURAN ARAPÇASI ÖZEL DERS UYGULAMALI'),
  Ilan(
      image: 'assets/images/ders6.png',
      text: 'Dilkoda İngilizce- Almanca İki kur Dil eğitimi'),
  Ilan(
      image: 'assets/images/ders7.png',
      text: '2023 KPSS Türkiye 43. Matematik Özel Ders'),
  Ilan(
      image: 'assets/images/ders8.png',
      text: 'MATEMATİK TEDAVİSİ'),
];

// İlan sınıfı
class Ilan {
  final String image;
  final String text;

  Ilan({required this.image, required this.text});
}
