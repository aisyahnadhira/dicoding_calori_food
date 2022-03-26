import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 55, 55),
      body: ListView(
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);},
                  color: Colors.white,
              ),
              Text('Explore', 
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold, 
                  fontFamily: GoogleFonts.openSans().fontFamily,
                  color: Colors.white, 
                  ),
                ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.white,
            ),
            ]
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Popular", 
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.w400, 
                  fontFamily: GoogleFonts.openSans().fontFamily,
                  color: Colors.white, 
                  ),
                ),
              Text("Recomended", 
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.w400, 
                  fontFamily: GoogleFonts.openSans().fontFamily,
                  color: Colors.white, 
                  ),
                ),
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 99, 7),
                  borderRadius: BorderRadius.circular(10),
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'New',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Stack(
        children: <Widget>[
          
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
              ),
              
            ),
          ),
          Image(
            height: MediaQuery.of(context).size.height - 300,
            image: AssetImage('assets/images/screen.png'),
          ),
          
        ]

          ),
          SizedBox(height: 10),
        Stack(
        children: <Widget>[
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
              ),
            ),
          ),
          
        ]

          ),
        ],
      ),
      
    );
  }
}