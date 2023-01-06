import 'package:assignment/utils/card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reactive Cards',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Cards(
              // Cards is a costoum widet designed you can find it under lib/utils/card.dart
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 60,
                    color: Colors.amber,
                    child: const Center(
                      child: Text(
                        "FIXED AREA",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FractionallySizedBox(
                    // to avoid mediaquerry
                    child: Container(
                        height: 60,
                        color: Colors.green,
                        child: const Center(
                          child: Text(
                            "SCALING AREA",
                            textScaleFactor: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Stack(
                // to put fixed area on top of the bottom card
                alignment: AlignmentDirectional
                    .topCenter, // to keep fixed card in top center
                clipBehavior: Clip.antiAlias,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Cards(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50.0),
                        child: FractionallySizedBox(
                          // to avoid mediaquerry
                          child: Container(
                              height: 60,
                              color: Colors.green,
                              child: const Center(
                                child: Text(
                                  "SCALING AREA",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 60,
                    color: Colors.amber,
                    child: const Center(
                      child: Text(
                        "FIXED AREA",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
