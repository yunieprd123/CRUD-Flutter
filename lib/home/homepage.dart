import 'package:flutter/material.dart';
import 'package:plant_shop/widget/about_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/basic.dart';
import '../pages/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 140,
                    width: double.infinity,
                    color: Color.fromARGB(255, 13, 114, 21)),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Nature Is Green",
                            style: GoogleFonts.montserrat(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F7),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: "Houseplants",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Row(
                children: [
                  Category(
                    imagePath: "assets/plant1.png",
                    title: "Greenery",
                  ),
                  Category(
                    imagePath: "assets/plant2.png",
                    title: "Care",
                  ),
                  Category(
                    imagePath: "assets/leaf3.png",
                    title: "Seed",
                  ),
                  Category(
                    imagePath: "assets/plant4.png",
                    title: "Find Me",
                  ),
                  Category(
                    imagePath: "assets/tree.png",
                    title: "Tree",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Plant",
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            PlantShop(
              imagePath: "assets/Plant13.jpg",
              nameShop: "Sirih Gading",
            ),
            PlantShop(imagePath: "assets/Plant11.jpg", nameShop: "Kaktus"),
            PlantShop(
                imagePath: "assets/Plant12.jpg", nameShop: "Lidah Komodo"),
          ],
        )),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 151, 49),
        title: Text('Hello Yuni, Wellcome Nature'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 71, 134, 47)),
              accountName: Text('Yuni Pradnyani'),
              accountEmail: Text('yuniprdnyani@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/tumbuhan.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.align_horizontal_left_sharp),
              title: Text(
                'About',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => AboutPage())));
              },
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart),
              title: Text(
                'Check Out',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductPage()));
                // navigate to home screen
              },
            ),
          ],
        ),
      ),
    );
  }
}

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

class Category extends StatelessWidget {
  final String imagePath;
  final String title;
  const Category({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Container(
          width: 50,
          height: 60,
          child: Column(children: [
            Image.asset(
              imagePath,
              width: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: GoogleFonts.montserrat(fontSize: 10),
            )
          ]),
        ),
      ),
    );
  }
}
