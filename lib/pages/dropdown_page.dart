import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  const DropdownPage({Key? key}) : super(key: key);

  @override
  _DropdownPageState createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: DropdownButton<String>(
                alignment: AlignmentDirectional.centerEnd,
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down_outlined),
                elevation: 16,
                style: const TextStyle(color: Colors.teal),
                underline: Container(
                  height: 2,
                  color: Colors.teal,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
