import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class OnSuccess extends StatefulWidget {
  const OnSuccess({super.key});

  @override
  State<OnSuccess> createState() => _OnSuccessState();
}

class _OnSuccessState extends State<OnSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo
            Container(
              alignment: Alignment.center,
              color: Colors.blue[400],
              height: MediaQuery.of(context).size.width * 0.4 > 200
                  ? 200
                  : MediaQuery.of(context).size.width * 0.4,
              width: MediaQuery.of(context).size.width * 0.4 > 200
                  ? 200
                  : MediaQuery.of(context).size.width * 0.4,
              child: const Text("Dev Day Logo"),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),

            // TextField
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.8 > 800
                  ? 800
                  : MediaQuery.of(context).size.width * 0.8,
              child: const AutoSizeText(
                "Welcome, Participant 420!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
