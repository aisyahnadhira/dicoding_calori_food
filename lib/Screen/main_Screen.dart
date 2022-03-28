import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 83, 79, 79),
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
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.black,),
              fillColor: Color.fromARGB(255, 238, 237, 240),
              filled: true,
              hintText: "Search Food",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24.0),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
                ),
              ),
            ),
        ),

        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
              height: 42,
              width: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 253, 93, 1),
                    Color.fromARGB(255, 236, 146, 42),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(24.0),
              ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'All',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              
              ),
               Text("Bread", 
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.w400, 
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                  color: Colors.white, 
                  ),
                ),
                Text("Drink", 
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.w400, 
                fontFamily: GoogleFonts.montserrat().fontFamily,
                color: Colors.white, 
                ),
              ),
              Text("Fruit", 
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.w400, 
                fontFamily: GoogleFonts.montserrat().fontFamily,
                color: Colors.white, 
                ),
              ),
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
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/food.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),  
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.866,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()),
                      );
                    },
                    child: Text(
                      'Food',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                       fontFamily: GoogleFonts.montserrat().fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ),
          ),
        ]),
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
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/drink.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),  
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(
              child: Container(
                  width: MediaQuery.of(context).size.width *0.866,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()),
                      );
                    },
                    child: Text(
                      'Drink',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                       fontFamily: GoogleFonts.montserrat().fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ),
          ),
        ]),
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
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/fastfood.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),  
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.866,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.black38,

                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()),
                      );
                    },
                    child: Text(
                      'Fast Food',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                       fontFamily: GoogleFonts.montserrat().fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ),
          ),
        ]),
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
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/bread.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),  
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.866,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()),
                      );
                    },
                    child: Text(
                      'Bread',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                       fontFamily: GoogleFonts.montserrat().fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ),
          ),
        ]),
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
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/fruit.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),  
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.866,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()),
                      );
                    },
                    child: Text(
                      'Fruit',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                       fontFamily: GoogleFonts.montserrat().fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ),
          ),]),
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
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/vegetable.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),  
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.866,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()),
                      );
                    },
                    child: Text(
                      'Vegetable',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                       fontFamily: GoogleFonts.montserrat().fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ),
          ),
        ]),
       
        
        SizedBox(height: 20),
        
                 
        ],
      ),
    );
  }
}


