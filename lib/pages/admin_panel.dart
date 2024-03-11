import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({super.key});

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Heading
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4 > 600
                    ? 400
                    : MediaQuery.of(context).size.width * 0.4,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue[400],
                  height: MediaQuery.of(context).size.width * 0.25 > 150
                      ? 150
                      : MediaQuery.of(context).size.width * 0.25,
                  width: MediaQuery.of(context).size.width * 0.4 > 400
                      ? 400
                      : MediaQuery.of(context).size.width * 0.4,
                  child: const Text("Dev Day Logo"),
                  // Title
                ),
              ),
              // Row for dropwdown and total condidates
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton(
                    value: "",
                    items: const [
                      DropdownMenuItem(
                        value: "",
                        child: Text("All"),
                      ),
                      DropdownMenuItem(
                        value: "Field 1",
                        child: Text("Field 1"),
                      ),
                      DropdownMenuItem(
                        value: "Field 2",
                        child: Text("Field 2"),
                      ),
                      DropdownMenuItem(
                        value: "Field 3",
                        child: Text("Field 3"),
                      ),
                    ],
                    onChanged: (x) {},
                  ),
                  const Text("Total Fields: 234")
                ],
              ),

              // Table
            ],
          ),
        ),
      ),
    );
  }
}
