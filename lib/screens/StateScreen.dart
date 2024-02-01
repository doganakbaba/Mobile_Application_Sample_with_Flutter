import 'package:flutter/material.dart';

class StateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emlak İlanları"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          StateIlanWidget(
            image: 'assets/images/ev1.jpg',
            text: 'Şehir Merkezinde 2+1 Daire',
          ),
          SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/ev2.jpg',
            text: 'Bahçeli Müstakil Ev',
          ),
          SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/ev3.jpg',
            text: 'Deniz Manzaralı Villa',
          ),
           SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/ev4.png',
            text: 'GÜZEL İNŞAATTAN BEYLİKDÜZÜ MARMARA MAHALLESİNDE 3+2 DAİRE',
          ),
           SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/ev5.png',
            text: 'GÖRÜKLE HİLTON 9 DA 2+1 SATILIK EŞYALI DAİRE',
          ),
           SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/ev6.png',
            text: 'Samsun Atakum 4. Kat daire Ömürevler Tramvaya 300mt',
          ),
           SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/ev7.png',
            text: 'ALANDEREDE İSKANLI KOMBİ PETEKLİ MÜSTAKİL BAHÇELİ 4+1 VİLLA',
          ),
            SizedBox(height: 16),
          StateIlanWidget(
            image: 'assets/images/ev8.png',
            text: 'BEYLİKDÜZÜ YAŞAM VADİSİNDE 3+1 ARA KAT FIRSATI',
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
