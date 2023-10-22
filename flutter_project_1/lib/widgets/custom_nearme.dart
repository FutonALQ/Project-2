import 'package:flutter/material.dart';

class CustomNearMe extends StatelessWidget {
  const CustomNearMe({
    super.key,
    required this.nameForRestaurant,
    required this.locationForRestaurant,
    required this.distanceForRestaurant,
    required this.imageForNearMe,
  });

  final String nameForRestaurant;
  final String locationForRestaurant;
  final String distanceForRestaurant;
  final String imageForNearMe;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageForNearMe),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameForRestaurant,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.location_pin),
                  Text(
                    locationForRestaurant,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff34495E),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.access_time_rounded),
                  Text(
                    distanceForRestaurant,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff34495E),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star_rate_rounded,
                    color: const Color(0xffFFC107),
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
