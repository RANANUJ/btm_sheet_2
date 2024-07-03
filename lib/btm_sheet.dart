import 'package:btm_sheet_2/Range_picker.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RangeValues _selectedRange = RangeValues(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Sheet",
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 211, 221, 138),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 216, 136, 245)),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return RangePicker();
                    }).then((value) {
                  _selectedRange = value;
                  setState(() {});
                });
              },
              child: Text(
                "Open Bottom Sheet",
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: Text(
              " Range ${_selectedRange.start} - ${_selectedRange.end}.",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
