import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("screen 3"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 630,
                  width: 420,
                  color: Colors.grey,
                  child:
                      Image.asset("assets/images/road.jpg", fit: BoxFit.cover),
                ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 600,
                  width: 400,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Transform.rotate(
                    angle: pi / 2,
                    child: Text(
                      "LIFE IS REALLY SIMPLE BUT WE INSIST ON \nMAKING IT COMPLICATED.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40, left: 90),
                child: Align(
                  alignment: Alignment.bottomLeft,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 400),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
