

import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  final String title;
  final bool showBackButton;
  final bool showCartButton;
  final bool showSearchButton;

  const TopBarWidget({
    required Key key,
    required this.title,
    this.showBackButton = false,
    this.showCartButton = false,
    this.showSearchButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (showBackButton)
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              if (showSearchButton)
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              if (showCartButton)
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {},
                ),
            ],
          ),
        ],
      ),
    );
  }
}