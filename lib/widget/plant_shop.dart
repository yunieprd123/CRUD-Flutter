import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantShop extends StatelessWidget {
  final String imagePath;
  final String nameShop;
  const PlantShop({super.key, required this.imagePath, required this.nameShop});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 250,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              child: SizedBox(
                height: 30,
                child: Column(
                  children: [
                    Text(
                      nameShop,
                      style: GoogleFonts.montserrat(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
