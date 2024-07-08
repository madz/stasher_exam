import 'package:flutter/material.dart';

import '../../../models/stash_points_model.dart';

class TitleWithLocation extends StatelessWidget {
  const TitleWithLocation({
    super.key,
    required this.stashPoint,
  });

  final Item stashPoint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            stashPoint.name ?? '',
            maxLines: 2,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1D2939),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            stashPoint.locationName ?? '',
            maxLines: 2,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF667085),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
