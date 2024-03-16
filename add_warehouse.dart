import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:main_app/add_warehouse_details.dart'; // Import AddWarehouseDetailsPage
// Import WarehousePreviewPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddWarehousePage(),
    );
  }
}

class AddWarehousePage extends StatefulWidget {
  @override
  _AddWarehousePageState createState() => _AddWarehousePageState();
}

class _AddWarehousePageState extends State<AddWarehousePage> {
  File? _profileImage;
  List<File> _images = [];

  @override
  void initState() {
    super.initState();
    // Load saved profile photo and warehouse images
    _loadProfileImage();
    _loadWarehouseImages();
  }

  // Load saved profile photo
  Future<void> _loadProfileImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? profileImagePath = prefs.getString('profileImage');
    if (profileImagePath != null) {
      setState(() {
        _profileImage = File(profileImagePath);
      });
    }
  }

  // Load saved warehouse images
  Future<void> _loadWarehouseImages() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? imagePaths = prefs.getStringList('warehouseImages');
    if (imagePaths != null) {
      List<File> loadedImages = [];
      for (String path in imagePaths) {
        loadedImages.add(File(path));
      }
      setState(() {
        _images = loadedImages;
      });
    }
  }

  Future<void> _getImage(ImageSource source, {bool isProfile = false}) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        if (isProfile) {
          _profileImage = File(pickedFile.path);
          _saveProfileImage(_profileImage!.path);
        } else {
          _images.add(File(pickedFile.path));
          _saveWarehouseImages();
        }
      }
    });
  }

  // Save profile photo path to shared preferences
  Future<void> _saveProfileImage(String path) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('profileImage', path);
  }

  // Save warehouse images paths to shared preferences
  Future<void> _saveWarehouseImages() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> imagePaths = _images.map((e) => e.path).toList();
    await prefs.setStringList('warehouseImages', imagePaths);
  }

  void _showPicker(BuildContext context, {bool isProfile = false}) {
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
                  _getImage(ImageSource.gallery, isProfile: isProfile);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text('Camera'),
                onTap: () {
                  _getImage(ImageSource.camera, isProfile: isProfile);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showWarehouseDetails(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddWarehouseDetailsPage(index: index)),
    ).then((value) {
      // Handle the value returned from AddWarehouseDetailsPage if needed
      // For example, update UI after details are saved
      _loadWarehouseImages(); // Reload warehouse images after details are saved
    });
  }

  void _removeImage(int index) {
    setState(() {
      _images.removeAt(index);
      _saveWarehouseImages();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 230,
              color: Color(0xFF1F41BB),
              child: Stack(
                children: [
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
                  Positioned(
                    top: 50,
                    left: MediaQuery.of(context).size.width / 2 - 70,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: _profileImage != null
                              ? FileImage(_profileImage!)
                              : AssetImage('assets/images/profile_image.png')
                                  as ImageProvider,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.add_a_photo),
                              onPressed: () {
                                _showPicker(context, isProfile: true);
                              },
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Display previously selected images
            if (_images.isNotEmpty)
              Center(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 20,
                  children: List.generate(
                    _images.length,
                    (index) => Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                          },
                          child: Container(
                            width: 370,
                            height: 350,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: FileImage(_images[index]),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              _showWarehouseDetails(context, index);
                            },
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: IconButton(
                            icon: Icon(Icons.remove_circle_outline),
                            onPressed: () {
                              _removeImage(index);
                            },
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: IconButton(
                            icon: Icon(Icons.image),
                            onPressed: () {
                              
                            },
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _showPicker(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.add_sharp,
                      size: 30,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
