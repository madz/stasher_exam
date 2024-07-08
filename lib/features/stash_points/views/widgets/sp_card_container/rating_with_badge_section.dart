import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../models/stash_points_model.dart';

class RatingWithBadgeSection extends StatelessWidget {
  const RatingWithBadgeSection({
    super.key,
    required this.stashPoint,
  });

  final Item stashPoint;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200,
          child: Row(
            children: [
              const Icon(
                Icons.star,
                size: 14,
              ),
              const SizedBox(width: 4),
              Text(
                stashPoint.rating.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF1D2939),
                ),
              ),
              Text(
                ' (${stashPoint.ratingCount})',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF1D2939),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 115,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: const Color(0xFFC5AEFF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Assets.images.moonStar.image(),
                const SizedBox(width: 2),
                Text(
                  stashPoint.openLate ?? false
                      ? 'Open Till Late'
                      : 'Closed Early',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5524D3),
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
