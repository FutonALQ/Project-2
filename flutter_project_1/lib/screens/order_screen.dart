import 'package:flutter/material.dart';
import 'package:flutter_project_1/widgets/custom_button.dart';
import 'package:flutter_project_1/widgets/custom_order.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Review Food',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.grey,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Transform.scale(
                scale: 0.9,
                child: CustomOrder(
                  colorButton: const Color(0xffECF0F1),
                  imagelink: "lib/assets/images/food.png",
                  price: '\$99.99',
                ),
              ),
              SizedBox(height: 10),
              Transform.scale(
                scale: 0.9,
                child: CustomOrder(
                  colorButton: const Color(0xffECF0F1),
                  imagelink: "lib/assets/images/food.png",
                  price: '\$99.99',
                ),
              ),
              SizedBox(height: 10),
              Transform.scale(
                scale: 0.9,
                child: CustomOrder(
                  colorButton: const Color(0xffECF0F1),
                  imagelink: "lib/assets/images/food.png",
                  price: '\$99.99',
                ),
              ),
              SizedBox(
                height: 100,
              ),
              CustomButton(
                backgroundColor: const Color(0xffD35400),
                text: 'Send',
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const OrderScreen();
                  }));
                },
                width: 340,
                height: 48,
              )
            ],
          ),
        ),
      ),
    );
  }
}
