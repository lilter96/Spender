import 'package:flutter/material.dart';

class WalletOverviewButton extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Function onPressed;

  WalletOverviewButton({
    required this.iconData,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48, // Set the height equal to FloatingActionButton
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24), // Half of the height for circular shape
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ]
      ),
      child: ElevatedButton(
        onPressed: () => onPressed(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconData, color: Colors.black),
            SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shadowColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28), // Half of the height for circular shape
          ),
        ),
      ),
    );
  }
}