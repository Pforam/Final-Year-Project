import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _contactNoController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  File? _profileImage;

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        _profileImage = File(pickedFile.path);
      }
    });
  }

  void _updateProfile() {
    // Implement your logic to update the profile here
    // For example, you can use the values from the text controllers
    String name = _nameController.text;
    String email = _emailController.text;
    String contactNo = _contactNoController.text;
    String password = _passwordController.text;

    // Save the updated profile information
    // For demonstration purposes, print the updated information
    print('Updated Name: $name');
    print('Updated Email: $email');
    print('Updated Contact Number: $contactNo');
    print('Updated Password: $password');
    if (_profileImage != null) {
      print('Updated Profile Image Path: ${_profileImage!.path}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 150,
              color: Color(0xFF1F41BB),
            ),
            Positioned(
              top: 15,
              left: 5,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.white,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 190),
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Enter your name',
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Enter your email',
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _contactNoController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Enter your phone number',
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _passwordController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Reset Password',
                        ),
                      ),
                      SizedBox(height: 32),
                      Center(
                        child: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _updateProfile,
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                Colors.black,
                              ),
                            ),
                            child: Text(
                              'UPDATE',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 80,
              left: MediaQuery.of(context).size.width / 2 - 60,
              child: GestureDetector(
                onTap: () {
                  _showPicker(context);
                },
                child: CircleAvatar(
                  radius: 68,
                  backgroundImage: _profileImage != null
                      ? FileImage(_profileImage!)
                      : AssetImage('assets/images/profile_image.png')
                          as ImageProvider,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Photo Library'),
                onTap: () {
                  _getImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text('Camera'),
                onTap: () {
                  _getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
