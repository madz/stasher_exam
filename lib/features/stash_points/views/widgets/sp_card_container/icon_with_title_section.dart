import 'package:flutter/material.dart';

import '../../../models/stash_points_model.dart';
import 'icon_section.dart';
import 'title_with_location.dart';

class IconWithTitleSection extends StatelessWidget {
  const IconWithTitleSection({
    super.key,
    required this.stashPoint,
  });

  final Item stashPoint;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconSection(
          stashPoint: stashPoint,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: TitleWithLocation(
            stashPoint: stashPoint,
          ),
        ),
      ],
    );
  }
}
