import 'package:devday_2024_attendance_frondend_mockup/pages/on_success.dart';
import 'package:flutter/material.dart';

class ParticipantSide extends StatefulWidget {
  const ParticipantSide({super.key});

  @override
  State<ParticipantSide> createState() => _ParticipantSideState();
}

class _ParticipantSideState extends State<ParticipantSide> {
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
              height: MediaQuery.of(context).size.width * 0.5 > 300
                  ? 300
                  : MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.5 > 300
                  ? 300
                  : MediaQuery.of(context).size.width * 0.5,
              child: const Text("Dev Day Logo"),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),

            // TextField
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8 > 400
                  ? 400
                  : MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue[400]!,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue[400]!,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),

            // Button
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OnSuccess()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue[800],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  child: Text(
                    "Go",
                    style: TextStyle(color: Colors.grey[200]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
