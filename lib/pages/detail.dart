import 'package:flutter/material.dart';
import 'package:calori_food/models/CaloriData.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  // const DetailScreen({ Key? key }) : super(key: key);
  final CaloriData title;
 
  DetailScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 83, 79, 79),
      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                    },
                    color: Colors.white,
                ),
                Text(title.title, 
                  style: TextStyle(
                    fontSize: 24, 
                    fontWeight: FontWeight.bold, 
                    fontFamily: GoogleFonts.openSans().fontFamily,
                    color: Colors.white, 
                    ),
                  ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
                color: Colors.white,
              ),
              ]
            ),
            SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.black38,
                  elevation: 5,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.height * 0.3,
                          child: Image.asset(title.image1)),
                      ),
                      Text(title.food1, 
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                       SizedBox(width: 30),
                      Text(title.kal1, style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height *0.3,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.black38,
                  elevation: 5,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.height *0.3,
                          child: Image.asset(title.image2)),
                      ),
                      Text(title.food2,
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                      SizedBox(width: 30),
                      Text(title.kal2, style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.black38,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.height * 0.3,
                          child: Image.asset(title.image3)),
                      ),
                      Text(title.food3, style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                       SizedBox(width: 30),
                      Text(title.kal3, style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}