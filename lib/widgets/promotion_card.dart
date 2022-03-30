import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard({
    Key? key,
    required this.image,
    required this.title,
    required this.from,
  }) : super(key: key);

  final String image;
  final String title;
  final String from;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(image),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 100,
            width: 150,
            child: Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    from,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
