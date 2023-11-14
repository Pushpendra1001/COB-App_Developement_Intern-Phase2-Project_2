import 'package:bmi/imageModel/custom.dart';
import 'package:bmi/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double userHeight = 40;
double userAge = 18;
double userWeight = 50;
List<bool> selected = <bool>[true, false];
List<Widget> gender = <Widget>[
  const Text("Male"),
  const Text("Female"),
];

double sliderMax = 100;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BMI ",
                            style: GoogleFonts.gabriela(fontSize: 32),
                          ),
                          Text(
                            "Calculator ",
                            style: GoogleFonts.gabriela(fontSize: 32),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                ToggleButtons(
                    isSelected: selected,
                    selectedColor: Colors.black,
                    fillColor: Colors.teal,
                    selectedBorderColor: Colors.black,
                    color: Colors.grey,
                    constraints:
                        const BoxConstraints.expand(height: 50, width: 60),
                    borderColor: Colors.black,
                    focusColor: Colors.red,
                    onPressed: (index) {
                      for (int i = 0; i < gender.length; i++) {
                        setState(() {
                          selected[i] = i == index;
                        });
                      }
                    },
                    borderRadius: BorderRadius.circular(20),
                    children: gender),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 2,
                        child: customImage(userAge, selected[0])),
                    const Spacer(),
                    RotatedBox(
                      quarterTurns: -1,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.height / 2,
                        child: Slider(
                          min: 40,
                          max: 250,
                          divisions: 250,
                          label: userHeight.round().toString(),
                          value: userHeight,
                          onChanged: (double value) {
                            setState(() {
                              userHeight = value;
                            });
                          },
                          activeColor: Colors.black,
                        ),
                      ),
                    ),
                    RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Height(Cm)",
                          style: GoogleFonts.gabriela(fontSize: 25),
                        )),
                  ],
                ),

                // it's  Age Slider ********************************
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Age",
                        style: GoogleFonts.gabriela(fontSize: 20),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Slider(
                          min: 0,
                          max: 100,
                          divisions: 100,
                          label: userAge.round().toString(),
                          value: userAge,
                          onChanged: (double value) {
                            setState(() {
                              userAge = value;
                            });
                          },
                          activeColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                // it's weight slider ********************************

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Weight(kg)",
                        style: GoogleFonts.gabriela(fontSize: 20),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Slider(
                          min: 1,
                          max: 200,
                          divisions: 100,
                          label: userWeight.round().toString(),
                          value: userWeight,
                          onChanged: (double value) {
                            setState(() {
                              userWeight = value;
                            });
                          },
                          activeColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Calculate"))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
