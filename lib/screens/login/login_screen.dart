import 'package:blinkit_clone/screens/bottomnav/bottom_nav_screen.dart';
import 'package:blinkit_clone/screens/splash/splash_screen.dart';
import 'package:blinkit_clone/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 10,
          children: [
            UiHelper.customImage(img: "Blinkit Onboarding Screen.png"),
            UiHelper.customImage(img: "image 10.png"),
            UiHelper.customText(text: "India's last minute app", color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "bold"),
            SizedBox(height: 10),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  spacing: 5,
                  children: [
                    SizedBox(height: 15),
                    UiHelper.customText(text: "Sagar", color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
                    UiHelper.customText(text: "76688XXXXX", color: Color(0xff9c9c9c), fontWeight: FontWeight.bold, fontSize: 14, fontFamily: "bold"),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffe23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 5,
                            children: [
                              UiHelper.customText(text: "Login with", color: Color(0xffffffff), fontWeight: FontWeight.bold, fontSize: 14, fontFamily: "bold"),
                              UiHelper.customImage(img: "image 9.png")
                            ],
                          )),
                    ),
                    UiHelper.customText(text: "Access  your saved addresses form zomato automatically ", color: Color(0XFF9c9c9c), fontWeight: FontWeight.normal, fontSize: 10),
                    SizedBox(height: 10),
                    UiHelper.customText(text: "or logn with phone number ", color: Color(0XFF269237), fontWeight: FontWeight.normal, fontSize: 14),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
