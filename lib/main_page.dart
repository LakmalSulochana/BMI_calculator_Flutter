import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [Icon(Icons.male, size: 100), Text("Male")],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [Icon(Icons.female, size: 100), Text("Fe-male")],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Height"),
                    Text(
                      "176",
                      style: TextStyle(
                          color: Color(0xFFFF8888),
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: null,
                          child: Icon(Icons.remove, size: 40),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        FloatingActionButton(
                          onPressed: null,
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
                    Text("Weight"),
                    Text(
                      "60",
                      style: TextStyle(
                          color: Color(0xFFFF8888),
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: null,
                          child: Icon(Icons.remove, size: 40),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        FloatingActionButton(
                          onPressed: null,
                          child: Icon(Icons.add, size: 40),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [Text("BMI"), Text("25.13")],
          )
        ]),
      )),
    );
  }
}
