import 'package:flutter/material.dart';
import 'package:main_app/description_page_1.dart';
import 'package:main_app/description_page_2.dart';
import 'package:main_app/description_page_7.dart';

class SeeMorePage extends StatelessWidget {
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
                        builder: (context) => DescriptionPageOne(),
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
                        builder: (context) => DescriptionPageTwo(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: 370,
                    height: 350,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/house_2.jpg"),
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
                            'The Agarwal House',
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
                        builder: (context) => DescriptionPageSeven(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: 370,
                    height: 350,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/house_7.jpg"),
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
                            'The Sharma House',
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
                        builder: (context) => DescriptionPageTwo(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: 370,
                    height: 350,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/house_8.jpg"),
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
                            'The Rajput House',
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
    home: SeeMorePage(),
  ));
}
