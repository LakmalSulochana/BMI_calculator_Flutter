import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 195;
  int weight = 50;

  late double bmi = calculateBMI(height: height, weight: weight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: Column(children: [
          Row(
            children: [
              Container(
                width: 160,
                height: 220,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 99, 132, 221),
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(Icons.male, size: 120),
                    Text(
                      "Male",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: 160,
                height: 220,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 99, 132, 221),
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(Icons.female, size: 120),
                    Text("Fe-male", style: TextStyle(fontSize: 30))
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Height", style: TextStyle(fontSize: 20)),
                        Text("(cm)", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Text(
                      "$height",
                      style: kInutLabelColor,
                    ),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              if (height > 50) height--;
                              bmi =
                                  calculateBMI(height: height, weight: weight);
                            });
                          },
                          child: Icon(Icons.remove, size: 40),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              if (height < 220) height++;
                              bmi =
                                  calculateBMI(height: height, weight: weight);
                            });
                          },
                          child: Icon(Icons.add, size: 40),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Weight", style: TextStyle(fontSize: 20)),
                        Text("(KG)", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Text(
                      "$weight",
                      style: kInutLabelColor,
                    ),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              if (weight > 10) weight--;
                              bmi =
                                  calculateBMI(height: height, weight: weight);
                            });
                          },
                          child: Icon(Icons.remove, size: 40),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              weight++;
                              bmi =
                                  calculateBMI(height: height, weight: weight);
                            });
                          },
                          child: Icon(Icons.add, size: 40),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Column(
            children: [
              Text(
                "BMI Score",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                bmi.toStringAsFixed(2),
                style: kInutLabelColor.copyWith(
                    color: kOutputTextColor, fontSize: 60),
              ),
              Text(getResult(bmi))
            ],
          )
        ]),
      )),
    );
  }

  double calculateBMI({required int height, required int weight}) {
    return (weight / (height * height)) * 10000;
  }

  static String getResult(bmiValue) {
    if (bmiValue >= 25) {
      return 'over Weight';
    } else if (bmiValue > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }
}
