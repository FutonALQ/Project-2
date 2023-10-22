import 'package:flutter/material.dart';
import 'package:flutter_project_1/screens/home_screen.dart';
import 'package:flutter_project_1/widgets/custom_button.dart';
import 'package:flutter_project_1/widgets/custom_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            ClipOval(
              child: Image.asset(
                "lib/assets/images/girl1.png",
                scale: 1,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "FutonAlqahtani",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const Text("+966 50 032 0941"),
            const SizedBox(height: 20),
            const CustomProfile(
              text: "My profile",
            ),
            const SizedBox(height: 15),
            const CustomProfile(
              text: "Change password",
            ),
            const SizedBox(height: 15),
            const CustomProfile(
              text: "Payment setting",
            ),
            const SizedBox(height: 15),
            const CustomProfile(
              text: "My Voucher",
            ),
            const SizedBox(height: 15),
            const CustomProfile(
              text: "Notification",
            ),
            const SizedBox(height: 15),
            const CustomProfile(
              text: "About us",
            ),
            const SizedBox(height: 15),
            const CustomProfile(
              text: "Contact us",
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              backgroundColor: const Color(0xFFECF0F1),
              text: "Sign out",
              width: 320,
              height: 48,
              textColor: Colors.black,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
