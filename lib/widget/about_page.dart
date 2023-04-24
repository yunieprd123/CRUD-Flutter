import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: height * 0.3,
                width: widht,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/Plant11.jpg"))),
              ),
              Positioned(
                top: 16,
                left: 16,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "About ENJOY PLANTS",
                    style: GoogleFonts.montserrat(
                        fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                height: height * .07,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Plant Shop terpecaya di seluruh dunia",
                style: GoogleFonts.montserrat(fontSize: 13),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.green[300],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Banyak jenis pilihan tanaman",
                            style: GoogleFonts.montserrat(fontSize: 13)),
                        Text("Cek lebih lanjut!!",
                            style: GoogleFonts.montserrat(fontSize: 13)),
                      ],
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("View"))
                  ],
                ),
              ),
            ),
          ),
          TitleAbout(
            title: "ENJOY PLANTS",
            about:
                "ENJOY PLANTS merupakan sebuah aplikasi yang digunakan untuk menbeli sebuah tanaman-tanaman hijau dan alami. Aplikas ini menerapkan sistem e-commerce, para customer akan diajak untuk melihat berbagai macam jenis tanamanyang tersedia di aplikasi Plant Shop ini.",
          ),
          TitleAbout(
              title: "Favorit Plant Shop",
              about:
                  "ENJOY PLANTS mendapatkan sebuah kategori favorit plant shop, dan best product local"),
          TitleAbout(
              title: "Find Me!", about: "Temukan kami di sosial media anda"),
        ],
      )),
    ));
  }
}

class TitleAbout extends StatelessWidget {
  final String title;
  final String about;
  const TitleAbout({
    super.key,
    required this.title,
    required this.about,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            about,
            style: GoogleFonts.montserrat(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
