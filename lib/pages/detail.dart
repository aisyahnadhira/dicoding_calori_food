import 'package:flutter/material.dart';
import 'package:calori_food/models/CaloriData.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  final CaloriData title;
 
  DetailScreen({required this.title});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 83, 79, 79),
      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 50.0, bottom: 10.0),
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
                Text(widget.title.title, 
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
                height: MediaQuery.of(context).size.height * 0.47,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.black38,
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.height * 0.3,
                          child: Image.asset(widget.title.imageList[0])),
                      ),
                      Text(widget.title.foodNameList[0], 
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                       SizedBox(width: 30),
                      Text(widget.title.kaloriList[0], style: TextStyle(
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
                height: MediaQuery.of(context).size.height *0.47,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.black38,
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.height *0.3,
                          child: Image.asset(widget.title.imageList[1])),
                      ),
                      Text(widget.title.foodNameList[1],
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                      SizedBox(width: 30),
                      Text(widget.title.kaloriList[1], style: TextStyle(
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
                height: MediaQuery.of(context).size.height * 0.47,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.black38,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.height * 0.3,
                          child: Image.asset(widget.title.imageList[2])),
                      ),
                      Text(widget.title.foodNameList[2], style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                       SizedBox(width: 30),
                      Text(widget.title.kaloriList[2], style: TextStyle(
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
                height: MediaQuery.of(context).size.height * 0.47,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.black38,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.height * 0.3,
                          child: Image.asset(widget.title.imageList[3])),
                      ),
                      Text(widget.title.foodNameList[3], style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                       SizedBox(width: 30),
                      Text(widget.title.kaloriList[3], style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        fontFamily: GoogleFonts.openSans().fontFamily, 
                        color: Colors.white),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        )
      )
    );
  }
}