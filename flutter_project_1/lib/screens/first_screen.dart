import 'package:flutter/material.dart';
import 'package:flutter_project_1/screens/sign_in_screen.dart';
import 'package:flutter_project_1/screens/sign_up_screen.dart';
import 'package:flutter_project_1/widgets/custom_button.dart';
import 'package:flutter_project_1/widgets/custom_divider_text_images.dart';
//import 'package:flutter_project_1/widgets/custom_text_field.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(171, 238, 125, 12),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("lib/assets/images/hamburger1.png"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              SizedBox(height: 20.0),
              CustomButton(
                text: 'Sign In',
                backgroundColor: Color(0xFFD35400),
                textColor: Colors.white,
                width: 300,
                height: 40,
                onPressed: () {
                  // to Sign In page
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SignInScreen();
                  }));
                },
              ),
              SizedBox(height: 15.0),
              //SizedBox(height: 10.0),
              CustomButton(
                text: 'Sign Up',
                backgroundColor: Color(0xFFECF0F1),
                textColor: Colors.black,
                width: 300,
                height: 40,
                onPressed: () {
                  //  to the Sign up page
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }));
                },
              ),
              SizedBox(height: 100.0),
              CustomDividerTextImages(),
            ],
          ),
        ),
      ),
    );
  }
}
