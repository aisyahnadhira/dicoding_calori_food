import 'package:flutter/material.dart';
import 'package:calori_food/models/CaloriData.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final CaloriData title;

  DetailScreen({required this.title});
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 146, 42),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  '"Once you have to start counting calories, it takes away from the joy of eating." - Mireille Guiliano',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Arial',
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            listTile(context, 0),
            listTile(context, 1),
            listTile(context, 2),
            listTile(context, 3),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 83, 79, 79),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(
            left: 24.0, right: 24.0, top: 50.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.white,
              ),
              Text(
                title.title,
                style: textStyle(),
              ),
              IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            foodCard(context, 0),
            SizedBox(height: 20),
            foodCard(context, 1),
            SizedBox(height: 20),
            foodCard(context, 2),
            SizedBox(height: 20),
            foodCard(context, 3),
            SizedBox(height: 20),
          ],
        ),
      )),
    );
  }

  Container foodCard(BuildContext context, int index) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.black38,
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset(title.imageList[index])),
            ),
            Text(
              title.foodNameList[index],
              style: textStyle(),
            ),
            SizedBox(width: 30),
            Text(
              title.kaloriList[index],
              style: textStyle(),
            ),
            Favorite(),
          ],
        ),
      ),
    );
  }

  ListTile listTile(BuildContext context, int index) {
    return ListTile(
      title: Text(title.foodNameList[index]),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }

  TextStyle textStyle() {
    return TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.openSans().fontFamily,
        color: Colors.white);
  }
}

class Favorite extends StatefulWidget {
  Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 30,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
