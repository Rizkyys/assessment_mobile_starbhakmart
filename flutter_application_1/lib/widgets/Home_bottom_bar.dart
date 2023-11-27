import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/ListData.dart';

class HomeBottomBar extends StatefulWidget {
  @override
  _HomeBottomBarState createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF212325),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.home,
            color: Color(0xFFE57734),
            size: 35,
          ),
          Icon(
            Icons.favorite_outline,
            color: Color(0xFFE57734),
            size: 35,
          ),
          Icon(
            Icons.shopping_cart,
            color: Color(0xFFE57734),
            size: 35,
          ),
          Icon(
            Icons.person,
            color: Color(0xFFE57734),
            size: 35,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListData()),
              );
            },
            child: Icon(
              Icons.add, // Placeholder for a custom icon, replace with your desired icon
              color: Color(0xFFE57734),
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
