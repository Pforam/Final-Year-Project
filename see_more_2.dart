import 'package:flutter/material.dart';
import 'package:main_app/description_page_1.dart';
import 'package:main_app/description_page_10.dart';
import 'package:main_app/description_page_3.dart';
import 'package:main_app/description_page_4.dart';
import 'package:main_app/description_page_5.dart';
import 'package:main_app/description_page_6.dart';

class SeeMoreTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Removes shadow.
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPageThree(),
                      ),
                    );
                  },
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      width: 370,
                      height: 350,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/house_3.jpg"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Stack(
                        // Wrap image and text in a Stack widget
                        children: [
                          Positioned(
                            // Position the text at the bottom left corner
                            bottom: 20,
                            left: 20,
                            child: Text(
                              'Sharma House',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add some spacing between the rows
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPageFour(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: 370,
                    height: 350,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/house_4.jpg"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      // Wrap image and text in a Stack widget
                      children: [
                        Positioned(
                          // Position the text at the bottom left corner
                          bottom: 20,
                          left: 20,
                          child: Text(
                            'Jason',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add some spacing between the rows
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPageFive(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: 370,
                    height: 350,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/house_5.jpg"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      // Wrap image and text in a Stack widget
                      children: [
                        Positioned(
                          // Position the text at the bottom left corner
                          bottom: 20,
                          left: 20,
                          child: Text(
                            'Ville',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add some spacing between the rows
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPageSix(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: 370,
                    height: 350,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/house_6.jpg"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      // Wrap image and text in a Stack widget
                      children: [
                        Positioned(
                          // Position the text at the bottom left corner
                          bottom: 20,
                          left: 20,
                          child: Text(
                            'Singh palace',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add some spacing between the rows
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPageTen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: 370,
                    height: 350,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/house_10.jpg"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      // Wrap image and text in a Stack widget
                      children: [
                        Positioned(
                          // Position the text at the bottom left corner
                          bottom: 20,
                          left: 20,
                          child: Text(
                            'Shree',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add some spacing between the rows
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPageOne(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: 370,
                    height: 350,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/house_1.jpg"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      // Wrap image and text in a Stack widget
                      children: [
                        Positioned(
                          // Position the text at the bottom left corner
                          bottom: 20,
                          left: 20,
                          child: Text(
                            'The Patel House',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SeeMoreTwoPage(),
  ));
}
