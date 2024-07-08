import 'package:flutter/material.dart';

import '../../../models/stash_points_model.dart';

class DistanceWithPriceSection extends StatelessWidget {
  const DistanceWithPriceSection({
    super.key,
    required this.stashPoint,
  });

  final Item stashPoint;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 200,
          child: Text(
            '1 min. from your location ',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
          ),
        ),
        SizedBox(
          width: 115,
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: '£${stashPoint.bookingFee}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1D2939),
                  ),
                ),
                const TextSpan(
                  text: ' bag/day',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF1D2939),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
