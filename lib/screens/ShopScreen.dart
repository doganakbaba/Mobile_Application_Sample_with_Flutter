import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 200).floor(); // 200, her bir kartın minimum genişliğidir

    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci El Alışveriş İlanları"),
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
  Ilan(image: 'assets/images/ie1.png', text: '10.000 LT DİKEY SU VE SIVI DEPOLAMA TANKI'),
  Ilan(image: 'assets/images/ie2.png', text: '240W KİNG BRİTE SAMSUNG LM301'),
  Ilan(image: 'assets/images/ie3.png', text: 'Koltuk Takımı'),
  Ilan(
      image: 'assets/images/ie4.png',
      text: '2 Aylık iPad Pro 3. Nesil 256 GB 11 İnç'),
  Ilan(
      image: 'assets/images/ie5.png',
      text: 'Ipad 12.9 inc 256GB 5. Nesil'),
  Ilan(
      image: 'assets/images/ie6.png',
      text: 'Temiz CASPER EXCALIBUR G670'),
  Ilan(
      image: 'assets/images/ie7.png',
      text: 'ATOM OFİS - FİLELİ ÇALIŞMA SANDALYESİ'),
  Ilan(
      image: 'assets/images/ie8.png',
      text: 'IMALATTAN İŞÇİ RANZASI YATAK '),
];

// İlan sınıfı
class Ilan {
  final String image;
  final String text;

  Ilan({required this.image, required this.text});
}
