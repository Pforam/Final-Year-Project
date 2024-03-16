import 'package:flutter/material.dart';
import 'package:main_app/profile_page.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xFF1F41BB),
            ),
            Positioned(
              top: 15,
              left: 5,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context)
                      .pop(); // Navigate back to previous screen
                },
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 90,
              left: 30,
              right: 30,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30), // Adjust the value to change the curve
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                                'assets/images/profile_image.png'), // Replace with your image asset
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Garry Allen',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: 10), // Adjust margin as needed
                        color: Colors.grey[400], // Light grey color
                        height: 1, // Line height
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Account Settings',
                        style: TextStyle(
                          fontSize: 16,
                          color:
                              Colors.grey[400], // Same color as the line below
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfilePage(),
                            ),
                          );
                          // Handle sidebar item 2 click
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Change Passowrd',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add Payment Method',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.add,
                            size: 18,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Push Notifications',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Switch(
                            value:
                                isSwitched, // Pass the boolean variable to the value parameter
                            onChanged: (value) {
                              // Update the state of the switch when it's toggled
                              setState(() {
                                isSwitched = value;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: 10), // Adjust margin as needed
                        color: Colors.grey[400], // Light grey color
                        height: 1, // Line height
                      ),
                      SizedBox(height: 15),
                      Text(
                        'More',
                        style: TextStyle(
                          fontSize: 16,
                          color:
                              Colors.grey[400], // Same color as the line below
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'About Us',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Terms and Conditions',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                          ),
                        ],
                      ),
                      // Add more settings here...
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
