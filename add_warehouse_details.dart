import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddWarehouseDetailsPage extends StatefulWidget {
  final int index;

  const AddWarehouseDetailsPage({Key? key, required this.index}) : super(key: key);

  @override
  _AddWarehouseDetailsPageState createState() => _AddWarehouseDetailsPageState();
}

class _AddWarehouseDetailsPageState extends State<AddWarehouseDetailsPage> {
  final TextEditingController _warehouseNameController = TextEditingController();
  final TextEditingController _warehouseLocationController = TextEditingController();
  final TextEditingController _warehouseCapacityController = TextEditingController();

  Future<void> _saveWarehouseDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('warehouseName${widget.index}', _warehouseNameController.text);
    await prefs.setString('warehouseLocation${widget.index}', _warehouseLocationController.text);
    await prefs.setString('warehouseCapacity${widget.index}', _warehouseCapacityController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Enter the Warehouse details',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _warehouseNameController,
              decoration: InputDecoration(
                labelText: 'Warehouse Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _warehouseLocationController,
              decoration: InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _warehouseCapacityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Size of Warehouse (sqft)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _saveWarehouseDetails();
                Navigator.pop(context); // Return to previous page
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                primary: Colors.blue[50],
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Save',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
