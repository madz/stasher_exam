import 'package:flutter/material.dart';

import '../../../models/stash_points_model.dart';
import 'distance_with_price_section.dart';
import 'rating_with_badge_section.dart';
import 'status_section.dart';

class StatusBadgeWithPriceSection extends StatelessWidget {
  const StatusBadgeWithPriceSection({
    super.key,
    required this.stashPoint,
  });

  final Item stashPoint;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RatingWithBadgeSection(stashPoint: stashPoint),
        StatusSection(stashPoint: stashPoint),
        DistanceWithPriceSection(stashPoint: stashPoint),
      ],
    );
  }
}
