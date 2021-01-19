import 'package:flutter/material.dart';

class editprofileu extends StatefulWidget {
  @override
  _editprofileuState createState() => _editprofileuState();
}

class _editprofileuState extends State<editprofileu> {
  String name;
  String email;
  String image;
  @override
  Widget build(BuildContext context) {
    final globalKey = GlobalKey<ScaffoldState>();
    TextEditingController nameController = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Edit Profil',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.done,
              color: Colors.black,
            ),
            onPressed: () {
              _saveEditProfile(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Nama',
              ),
              onChanged: (value) {
                name = value.trim();
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Email',
              ),
              onChanged: (value) {
                email = value.trim();
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Photo URL',
              ),
              maxLines: 3,
              onChanged: (value) {
                image = value.trim();
              },
            ),
          ],
        ),
      ),
    );
  }

  _saveEditProfile(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Profile Changed'),
          content: Text('Do you want to save your edits?'),
          actions: [
            FlatButton(
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text(
                'Save',
                style: TextStyle(color: Colors.cyan),
              ),
              onPressed: () {
                var callback = {
                  'name': name,
                  'email': email,
                  'image': image,
                };
                Navigator.pop(context);
                Navigator.pop(context, callback);
              },
            ),
          ],
        );
      },
    );
  }
}
