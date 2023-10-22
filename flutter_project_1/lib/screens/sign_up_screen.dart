import 'package:flutter/material.dart';
import 'package:flutter_project_1/screens/sign_in_screen.dart';
import 'package:flutter_project_1/widgets/custom_button.dart';
import 'package:flutter_project_1/widgets/custom_divider_text_images.dart';
import 'package:flutter_project_1/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),

            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
              size: 15,
              // Arrow color
            ),
            //),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              CustomTextField(
                hintText: ' Enter Username',
                backgroundColor: Color(0xFFECF0F1),
                hintTextColor: Color(0xFF000000).withOpacity(.3),
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: 'Enter Password',
                backgroundColor: Color(0xFFECF0F1),
                hintTextColor: Color(0xFF000000).withOpacity(.3),
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: 'Re-enter Password',
                backgroundColor: Color(0xFFECF0F1),
                hintTextColor: Color(0xFF000000).withOpacity(.3),
                obscureText: true,
              ),
              SizedBox(height: 25),
              CustomButton(
                text: 'Sign In',
                backgroundColor: Color(0xFFD35400),
                textColor: Colors.white,
                width: 340,
                height: 48,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SignInScreen();
                  }));
                },
              ),
              //SizedBox(height: 9),
              SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Color(0xFF34495E),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 150),
              CustomDividerTextImages(),
            ],
          ),
        ),
      ),
    );
  }
}
