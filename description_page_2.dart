import 'package:flutter/material.dart';
import 'package:main_app/homepage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DescriptionPageTwo(),
    ));

class DescriptionPageTwo extends StatefulWidget {
  @override
  _DescriptionPageTwoState createState() => _DescriptionPageTwoState();
}

class _DescriptionPageTwoState extends State<DescriptionPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 370,
                      height: 362,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/house_2.jpg"), // Replace with your actual asset image path
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20, // Adjust the top position as needed
                      left: 20, // Adjust the left position as needed
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: ShapeDecoration(
                          color: Color(0x7FDBDBDB),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero, // Added zero padding
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                            // Handle back button press
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20, // Adjust the top position as needed
                      right: 20, // Adjust the left position as needed
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: ShapeDecoration(
                          color: Color(0x7FDBDBDB),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero, // Added zero padding
                          icon: Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            // Handle back button press
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20, // Adjust the bottom position as needed
                      left: 20, // Adjust the left position as needed
                      child: Text(
                        'The Agarwal House',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Spacious room with abundant natural light from large window. Unfurnished, offering a blank canvas for your vision. Versatile space adapts to various needs...',
                            style: TextStyle(
                              color: Color(0xFF7A7878),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'Show More',
                            style: TextStyle(
                              color: Color(0xBC3B89E4),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Color(0xC13B89E4),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/man_1.png"), // Replace with your actual asset image path
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Anand Agarwal',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            Text(
                              'Owner',
                              style: TextStyle(
                                color: Color(0xFF7A7878),
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Opacity(
                          opacity: 0.30,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Color(0xFF1F41BB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Add functionality for phone call button
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Opacity(
                          opacity: 0.30,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Color(0xFF1F41BB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Add functionality for phone call button
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          height: 75,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/house_2.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 85,
                          height: 75,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/house_3.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 85,
                          height: 75,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/house_4.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 85,
                          height: 75,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/house_5.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        // Add more widgets or images as needed
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'G-5 Sujata Towers,\nGotri road,\nVadodara',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            color: Color(0xFF7A7878),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Rp. 10,000 / month',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Container(
                                width: 122,
                                height: 39,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF1F41BB),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text("Confirm Rent"),
                                          content: Text(
                                              "Are you sure you want to rent this property?"),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                // Perform action on dialog close
                                              },
                                              child: Text("Cancel"),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                // Perform action on confirmation
                                                Navigator.of(context).pop();
                                                // Perform action after dialog is closed
                                              },
                                              child: Text("Confirm"),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      'Rent Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                )),
                            // Add more Text or widgets as needed
                          ],
                        ),
                        // Add more Text or widgets as needed
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
