import 'package:flutter/material.dart';

bool islikeSelected = false;
bool isdislikeSelected = false;

// ignore: must_be_immutable
class CustomOrder extends StatefulWidget {
  CustomOrder({
    Key? key,
    this.colorButton = Colors.black,
    required this.imagelink,
    required this.price,
  }) : super(key: key);

  Color colorButton;
  final String imagelink;
  final String price;

  @override
  State<CustomOrder> createState() => _CustomOrderState();
}

class _CustomOrderState extends State<CustomOrder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        children: [
          Container(
            width: 100,
            child: Image.asset(widget.imagelink),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dogmie jagong tutung',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    size: 12,
                  ),
                  SizedBox(width: 10),
                  Text('999+ | ',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal)),
                  Icon(Icons.thumb_down_off_alt_outlined, size: 12),
                  SizedBox(width: 10),
                  Text('93+',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal))
                ],
              ),
              SizedBox(height: 8),
              Text(
                widget.price,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2ECC71)),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              CircleAvatar(
                backgroundColor:
                    islikeSelected ? Color(0xffD35400) : widget.colorButton,
                radius: 15,
                child: IconButton(
                  iconSize: 15,
                  color: islikeSelected ? Color(0xffECF0F1) : Colors.black,
                  onPressed: () {
                    setState(() {
                      islikeSelected = true;
                      isdislikeSelected = false;
                    });
                  },
                  icon: Icon(
                    Icons.thumb_up_alt_outlined,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor:
                    isdislikeSelected ? Color(0xffD35400) : widget.colorButton,
                radius: 15,
                child: IconButton(
                  iconSize: 15,
                  color: isdislikeSelected ? Color(0xffECF0F1) : Colors.black,
                  onPressed: () {
                    setState(() {
                      islikeSelected = false;
                      isdislikeSelected = true;
                    });
                  },
                  icon: Icon(
                    Icons.thumb_down_off_alt_outlined,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
