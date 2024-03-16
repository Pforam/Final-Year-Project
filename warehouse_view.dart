import 'package:flutter/material.dart';

class ViewWarehouseDetailsPage extends StatelessWidget {
  final String name;
  final String location;
  final String capacity;

  const ViewWarehouseDetailsPage({
    Key? key,
    required this.name,
    required this.location,
    required this.capacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warehouse Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Warehouse Name: $name',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Location: $location',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Capacity: $capacity sqft',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
