import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final firebaseInstance = FirebaseFirestore.instance;

class AuthController {
  // Replace this with your actual authentication implementation

  String get userId {
    // Retrieve the current user from Firebase Authentication
    User? user = FirebaseAuth.instance.currentUser;

    // Check if the user is signed in and return the user ID
    if (user != null) {
      return user.uid;
    } else {
      return '';
    }
  }
}

class DataController {
  AuthController authController = AuthController();
  Map userProfileData = {'userName': '', 'email': ''};

  void onReady() {
    getUserProfileData();
  }

  Future<void> getUserProfileData() async {
    try {
      var response = await firebaseInstance
          .collection('users')
          .where('uid', isEqualTo: authController.userId)
          .get();

      if (response.docs.length > 0) {
        userProfileData['userName'] = response.docs[0]['fullName'];
        userProfileData['email'] = response.docs[0]['email'];
      }

      print(userProfileData);
    } on FirebaseException catch (e) {
      print(e);
    } catch (error) {
      print(error);
    }
  }
}

class Database extends StatelessWidget {
  Database({super.key});
  final DataController controller = DataController();

  @override
  Widget build(BuildContext context) {
    controller.onReady();
    return Scaffold(
      appBar: AppBar(),
      body: Text(
        '${controller.userProfileData['userName']}',
        style: GoogleFonts.heebo(
          fontSize: 16,
          color: Colors.black,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
