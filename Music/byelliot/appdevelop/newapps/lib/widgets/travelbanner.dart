import 'package:flutter/material.dart';

class TravelBanner extends StatelessWidget {
  const TravelBanner({super.key});
  // final theme = Theme.of(context);

  @override
  Widget build(BuildContext context) {
    return const Card.filled(
      child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Row(
          //for text
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Travel buddy',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Touch the grass'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
