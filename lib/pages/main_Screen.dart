import 'package:calori_food/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calori_food/models/CaloriData.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 83, 79, 79),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, right: 24.0, top: 50.0, bottom: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.openSans().fontFamily,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.restaurant_menu,
                      color: Colors.white,
                      size: 30,
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
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
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.6,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 12, bottom: 16),
                  itemCount: caloriDataList.length,
                  itemBuilder: (context, index) {
                    final CaloriData food = caloriDataList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(title: food);
                        }));
                      },
                      child: Container(
                        child: Stack(children: <Widget>[
                          Positioned(
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 19),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Stack(children: <Widget>[
                                      Positioned.fill(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            
                                              color: 
                                                Color.fromARGB(
                                                    255, 236, 146, 42),
                                              
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              food.title,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Montserrat',
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]))),
                          ),
                        ]),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: caloriDataList.length,
                  itemBuilder: (context, index) {
                    final CaloriData food = caloriDataList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(title: food);
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Stack(children: <Widget>[
                          Positioned(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
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
                                      image: AssetImage(food.image),
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
                                width:
                                    MediaQuery.of(context).size.width * 0.833,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                  color: Colors.black38,
                                ),
                                child: Center(
                                  child: Text(
                                    food.title,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      fontFamily:
                                          GoogleFonts.montserrat().fontFamily,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
