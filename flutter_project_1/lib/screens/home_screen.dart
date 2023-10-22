import 'package:flutter/material.dart';
import 'package:flutter_project_1/widgets/custom_foodmenu.dart';
import 'package:flutter_project_1/widgets/custom_items.dart';
import 'package:flutter_project_1/widgets/custom_nearme.dart';
import 'package:flutter_project_1/widgets/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(9),
                  child: CustomTextField(
                    hintText: 'Search',
                    backgroundColor: Color(0xFFECF0F1),
                    hintTextColor: Color(0xFF000000).withOpacity(0.3),
                    icon: Icons.search,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 16),
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("9 West 46 Th Street, New York City"),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomItems(
                          text: 'Drink',
                          icon: Icon(Icons.coffee_sharp),
                        ),
                        SizedBox(width: 20),
                        CustomItems(
                          text: 'Food',
                          icon: Icon(Icons.fastfood_rounded),
                        ),
                        SizedBox(width: 32),
                        CustomItems(
                          text: 'Cake',
                          icon: Icon(Icons.cake),
                        ),
                        SizedBox(width: 32),
                        CustomItems(
                          text: 'Snack',
                          icon: Icon(Icons.food_bank_sharp),
                        ),
                        SizedBox(width: 32),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Food Menu",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomFoodMenu(
                        backgroundColor: Color.fromARGB(77, 52, 152, 219),
                        text: "Burger",
                        imageForMenu: "lib/assets/images/image1.png",
                      ),
                      SizedBox(width: 16),
                      CustomFoodMenu(
                        backgroundColor: Color.fromARGB(77, 156, 89, 182),
                        text: "Pizza",
                        imageForMenu: "lib/assets/images/image2.png",
                      ),
                      SizedBox(width: 16),
                      CustomFoodMenu(
                        backgroundColor: Color.fromARGB(77, 52, 152, 219),
                        text: "BBQ",
                        imageForMenu: "lib/assets/images/image3.png",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, top: 16, bottom: 8, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Near me",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 16),
                    children: [
                      CustomNearMe(
                        nameForRestaurant: "Dapur Ijah Restaurant",
                        locationForRestaurant: "13th Street, 46 W 12th St, NY",
                        distanceForRestaurant: "3 min - 1.1 km",
                        imageForNearMe: "lib/assets/images/food.png",
                      ),
                      SizedBox(height: 16),
                      CustomNearMe(
                        nameForRestaurant: "Dapur Ijah Restaurant",
                        locationForRestaurant: "13th Street, 46 W 12th St, NY",
                        distanceForRestaurant: "3 min - 1.1 km",
                        imageForNearMe: "lib/assets/images/food.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
