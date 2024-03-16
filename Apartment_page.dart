import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:main_app/add_warehouse.dart';
import 'package:main_app/description_page_1.dart';
import 'package:main_app/description_page_2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:main_app/homepage.dart';
import 'package:main_app/login.dart';
import 'package:main_app/profile_page.dart';
import 'package:main_app/see_more_2.dart';
import 'package:main_app/setting_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ApartmentPage(),
  ));
}

class ApartmentPage extends StatefulWidget {
  @override
  _ApartmentPageState createState() => _ApartmentPageState();
}

class _ApartmentPageState extends State<ApartmentPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signOut(BuildContext context) async {
    try {
      await _auth.signOut();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
      // Navigate to login or another screen after logout
    } catch (e) {
      print("Error signing out: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Vadodara',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ), // Add some space between text and container
                IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF1F41BB), // Set the background color here
                  ),
                  child: Builder(
                    builder: (BuildContext context) {
                      return Center(
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 45.0, // Adjust the size of the icon as needed
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
              ),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfilePage(),
                  ),
                );
                // Handle sidebar item 2 click
              },
            ),
            ListTile(
              leading: Icon(
                Icons.location_on,
              ),
              title: Text('Nearby'),
              onTap: () {
                // Handle sidebar item 3 click
              },
            ),
            ListTile(
              leading: Icon(
                Icons.bookmark,
              ),
              title: Text('Saved'),
              onTap: () {
                // Handle sidebar item 4 click
              },
            ),
            ListTile(
              leading: Icon(
                Icons.add_business,
              ),
              title: Text('Add Warehouse'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddWarehousePage(),
                  ),
                );
                // Handle sidebar item 5 click
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
                // Handle sidebar item 6 click
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help,
              ),
              title: Text('Help'),
              onTap: () {
                // Handle sidebar item 7 click
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: Text('Logout'),
              onTap: () => _signOut(context),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 360,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 243, 243, 1),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              hintText: "Search address, or near you"),
                        ),
                      ),
                      SizedBox(
                          height:
                              25), // Add some space between the two containers
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
                                  );
                                },
                                child: Text(
                                  'House',
                                  style: TextStyle(
                                    color: Color(0xFF7A7878),
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              width:
                                  30), // Add some space between the two Text widgets
                          Container(
                            width: 100,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: Color(0xFF1F41BB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Apartment',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Near from you',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 175),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SeeMoreTwoPage()),
                              );
                            },
                            child: Text(
                              'See more',
                              style: TextStyle(
                                color: Color(0xFF7A7878),
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 300,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DescriptionPageOne(),
                                    ),
                                  );
                                  // Handle tap for the first image
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 15, right: 15),
                                  width: 211,
                                  height: 284,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/a_1.jpeg"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
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
                                          'Kite',
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
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DescriptionPageTwo(),
                                    ),
                                  );
                                  // Handle tap for the second image
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 15),
                                  width: 211,
                                  height: 284,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/a_2.jpeg"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
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
                                          'Old Flat',
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
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Best for you',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 175),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SeeMoreTwoPage()),
                              );
                            },
                            child: Text(
                              'See more',
                              style: TextStyle(
                                color: Color(0xFF7A7878),
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 86,
                            height: 79,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/a_3.jpeg"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: 15), // Add space between image and column
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Orchad House',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '8000',
                                style: TextStyle(
                                  color: Color(0xFF7A7878),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 86,
                            height: 79,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/a_4.jpeg"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: 15), // Add space between image and column
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The Hollies House',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '7000',
                                style: TextStyle(
                                  color: Color(0xFF7A7878),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 86,
                            height: 79,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/a_5.jpeg"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: 15), // Add space between image and column
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Heaven',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '6000',
                                style: TextStyle(
                                  color: Color(0xFF7A7878),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 86,
                            height: 79,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/a_6.jpeg"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: 15), // Add space between image and column
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The Rivera House',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '12,000',
                                style: TextStyle(
                                  color: Color(0xFF7A7878),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
