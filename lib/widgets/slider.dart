import 'package:bmi/Homepage.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider(
      {super.key, required this.sliderMax, required this.sliderMin});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
  final double sliderMax;
  final double sliderMin;
}

class _CustomSliderState extends State<CustomSlider> {
  double currValue = sliderMax / 2;
  @override
  Widget build(BuildContext context) {
    return Slider(
      min: widget.sliderMin,
      max: sliderMax,
      divisions: 100,
      label: currValue.round().toString(),
      value: currValue,
      onChanged: (double value) {
        setState(() {
          currValue = value;
        });
      },
      activeColor: Colors.black,
    );
  }
}
