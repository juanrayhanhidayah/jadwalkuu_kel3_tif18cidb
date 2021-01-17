/* import 'package:flutter/material.dart';
import 'package:jadwal_app/src/screens/editprofile.dart';

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  String name;
  String email;
  String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profil Saya'),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onPressed: () {
                _editProfile(context);
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75,
              child: image != null
                  ? Container(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          decoration: BoxDecoration(
                            image,
                          ),
                        ),
                      ),
                    )
                  : Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey,
                    ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                name ?? 'Your Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Text(
                email ?? 'email',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _editProfile(BuildContext context) async {
    var callback = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => editprofileu()),
    );
    print(callback);
    if (callback == null) {
      return;
    }
    setState(() {
      name = callback['name'];
      email = callback['email'];
      image = callback['image'];
    });
  }
}
 
 */
