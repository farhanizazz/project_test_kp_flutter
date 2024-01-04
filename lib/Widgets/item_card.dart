import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String image;
  final String namaItem;
  final int qty;
  final double price;
  const ItemCard({super.key, required this.image, required this.namaItem, required this.qty, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Color(0xFFE2E2E2),
        )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset('assets/images/items/$image.png'),
          ),
          Text(namaItem),
          Text('$qty, Price'),
          SizedBox(height: 10,),
          Text('\$$price')

        ],
      ),
    );
  }
}
