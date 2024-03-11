import 'package:devday_2024_attendance_frondend_mockup/pages/admin_panel.dart';
import 'package:devday_2024_attendance_frondend_mockup/pages/participant_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dev Day 2024 Attendance Mockup',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AdminPanel(),
    );
  }
}
