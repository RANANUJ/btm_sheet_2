import 'package:flutter/material.dart';

class RangePicker extends StatefulWidget {
  const RangePicker({super.key});

  @override
  State<RangePicker> createState() => _RangePicker();
}

class _RangePicker extends State<RangePicker> {
  RangeValues _currentRangeValues = RangeValues(0, 10);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RangeSlider(
            values: _currentRangeValues,
            max: 100,
            divisions: 5,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 79, 76, 76)),
            onPressed: () {
              Navigator.of(context).pop(_currentRangeValues);
            },
            child: const Text(
              "Save",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
