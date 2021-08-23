import 'package:delivora/constant.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:permission_handler/permission_handler.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPermission();
  }

  void getPermission() async {
    PermissionStatus status = await Permission.sms.status;
    if (status.isGranted) {
      print("Working");
    } else if (status.isDenied) {
      await Permission.sms.request();
    } else if (status.isPermanentlyDenied || status.isRestricted) {
      openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 50, fontFamily: 'Balsamiq Sans'),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: kInputDecorationSignInTextField,
                onSubmitted: (value) async {
                  String formatedValue = "+91 " +
                      value.splitMapJoin(RegExp(r'[0-9]+'),
                          onMatch: (m) =>
                              '${m[0]!.substring(0, 4)} ${m[0]!.substring(4, 7)} ${m[0]!.substring(7)}',
                          onNonMatch: (n) => '');
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: formatedValue,
                    timeout: const Duration(seconds: 60),
                    verificationCompleted:
                        (PhoneAuthCredential credential) async {
                      await FirebaseAuth.instance
                          .signInWithCredential(credential);
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    verificationFailed: (FirebaseAuthException e) {
                      print("Cannot Register");
                    },
                    codeSent: (String verificationId, int? resendToken) {
                      showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          builder: (context) {
                            return Container(
                              height: 350.0,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Enter OTP',
                                ),
                                onSubmitted: (value) async {
                                  PhoneAuthCredential credential =
                                      PhoneAuthProvider.credential(
                                          verificationId: verificationId,
                                          smsCode: value);
                                  await FirebaseAuth.instance
                                      .signInWithCredential(credential);
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/', (route) => false);
                                },
                              ),
                            );
                          });
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
