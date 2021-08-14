import 'package:flutter/material.dart';
import 'package:delivora/constant.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: kSecondaryColor,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Hero(
              tag: 'proflepichero',
              child: CircleAvatar(
                child: Text(
                  "C",
                  style: TextStyle(fontSize: 80),
                ),
                backgroundColor: kSecondaryColor,
                radius: 50,
              ),
            ),
            Center(
              child: Text(
                "Customer",
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration:
                    kInputDecorationTextField.copyWith(labelText: 'Name'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration:
                    kInputDecorationTextField.copyWith(labelText: 'Email Id'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration:
                    kInputDecorationTextField.copyWith(labelText: 'Phone'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
