import 'package:flutter/material.dart';

import '../../../models/stash_points_model.dart';
import 'icon_with_title_section.dart';
import 'status_badge_with_price_section.dart';

class StashPointContainer extends StatelessWidget {
  const StashPointContainer({
    super.key,
    required this.stashPoint,
  });

  final Item stashPoint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFFD0D5DD),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: IconWithTitleSection(
              stashPoint: stashPoint,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            child: StatusBadgeWithPriceSection(
              stashPoint: stashPoint,
            ),
          ),
        ],
      ),
    );
  }
}
