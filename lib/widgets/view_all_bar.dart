import 'package:flutter/material.dart';

class ViewAllBar extends StatelessWidget {
  const ViewAllBar({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          TextButton(
              onPressed: onPressed,
              child: const Text(
                'ดูทั้งหมด',
                style: TextStyle(fontSize: 16),
              )),
        ],
      ),
    );
  }
}
