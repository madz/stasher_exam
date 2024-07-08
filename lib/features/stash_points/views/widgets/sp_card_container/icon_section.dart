import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/stash_points_model.dart';

class IconSection extends StatelessWidget {
  const IconSection({
    super.key,
    required this.stashPoint,
  });

  final Item stashPoint;

  @override
  Widget build(BuildContext context) {
    return stashPoint.photos != null
        ? CachedNetworkImage(
            imageUrl: stashPoint.photos![0],
            imageBuilder: (context, imageProvider) => Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFD1E9FF),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            placeholder: (context, url) => Platform.isAndroid
                ? const CircularProgressIndicator()
                : const CupertinoActivityIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )
        : const Icon(
            Icons.image_not_supported,
            color: Color(0xFF1D2939),
          );
  }
}
