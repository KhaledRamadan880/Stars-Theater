import 'package:flutter/material.dart';

//! Navigate Method
void navigateReplacement(BuildContext context , String route) {
  Navigator.pushReplacementNamed(context, route);
}
void navigateNamed(BuildContext context , String route) {
  Navigator.pushNamed(context, route);
}
