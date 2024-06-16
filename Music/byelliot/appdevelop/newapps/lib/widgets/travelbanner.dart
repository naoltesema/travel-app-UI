import 'package:flutter/material.dart';

class TravelBanner extends StatelessWidget {
  const TravelBanner({super.key});
  // final theme = Theme.of(context);

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Color(0xff0202fa),
      child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Row(
          //for text
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Travel buddy',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                const Text('Touch the grass',
                    style: TextStyle(color: Colors.white)),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.flight),
                    label: const Text('travel now'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
