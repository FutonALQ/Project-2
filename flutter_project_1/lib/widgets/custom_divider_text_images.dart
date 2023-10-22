import 'package:flutter/material.dart';

class CustomDividerTextImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: Divider(
                color: Color.fromRGBO(49, 49, 49, 0.875),
                height: 5.0,
              ),
            ),
            SizedBox(width: 10),
            Text(
              ' Or connect with',
              style: TextStyle(fontSize: 12.0, color: Color(0xFF34495E)),
            ),
            SizedBox(width: 10),
          ],
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("lib/assets/images/facebook1.png"),
            SizedBox(width: 15),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset("lib/assets/images/google-plus1.png"),
            ),
          ],
        ),
      ],
    );
  }
}
