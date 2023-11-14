import 'package:flutter/material.dart';

Widget customImage(double userAge, bool Gender) {
  String gender = Gender ? 'Male' : 'female';

  if (userAge < 5) {
    return Image.asset(
      "assets/$gender/1.png",
      fit: BoxFit.fitHeight,
    );
  } else if (userAge >= 5 && userAge < 10) {
    return Image.asset(
      "assets/$gender/2.png",
      fit: BoxFit.fitHeight,
    );
  } else if (userAge >= 10 && userAge < 18) {
    return Image.asset(
      "assets/$gender/3.png",
      fit: BoxFit.fitHeight,
    );
  } else if (userAge >= 18 && userAge < 35) {
    return Image.asset(
      "assets/$gender/4.png",
      fit: BoxFit.fitHeight,
    );
  } else if (userAge >= 35 && userAge < 60) {
    return Image.asset(
      "assets/$gender/5.png",
      fit: BoxFit.fitHeight,
    );
  } else if (userAge >= 60) {
    return Image.asset(
      "assets/$gender/6.png",
      fit: BoxFit.fitHeight,
    );
  }
  return Image.asset(
    "assets/$gender/3.png",
    fit: BoxFit.fitHeight,
  );
}
