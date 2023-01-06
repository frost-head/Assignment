import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Widget? child;
  double? height; // if media querry is involved
  double? width; // if media querry is involved
  bool? fullWidth; // if media querry is involved
  Color? backgroundColor;
  double? radius;
  double? padding;

//declaration of card widget
  Cards(
      {super.key,
      required this.child,
      this.height = 250, // if media querry is involved
      this.backgroundColor,
      this.radius,
      this.width = 300, // if media querry is involved
      this.fullWidth = true, // if media querry is involved
      this.padding = 15});

  @override
  Widget build(BuildContext context) {
    // fullWidth! ? width = MediaQuery.of(context).size.width : width;                        // for media querry
    radius != null ? radius = radius : radius = 25;
    backgroundColor != null
        ? backgroundColor = backgroundColor
        : backgroundColor = Colors.grey[100];
    return FractionallySizedBox(
      widthFactor: 1,
      // to remove media Querry
      child: Container(
        // width: width,   // with media queery
        // height: height,

        //used to clip a set of elements toegather
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 15, spreadRadius: 15)
          ],
          color: backgroundColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(padding!), //padding for side elongation
          child: child,
        ),
      ),
    );
  }
}
