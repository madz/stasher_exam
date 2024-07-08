import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/stash_points_controller.dart';
import 'widgets/sp_card_container/stash_point_container.dart';

class StashPointsView extends StatelessWidget {
  const StashPointsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StashPointsController(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Stasher Exam App'),
        ),
        body: Consumer<StashPointsController>(
          builder: (context, controller, child) {
            if (controller.isLoading && controller.stashpoints.isEmpty) {
              return Center(
                child: Platform.isIOS
                    ? const CupertinoActivityIndicator()
                    : const CircularProgressIndicator(),
              );
            }

            if (controller.error != null) {
              return Center(child: Text(controller.error!));
            }

            return ListView.builder(
              itemCount: controller.stashpoints.length +
                  (controller.hasNextPage ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == controller.stashpoints.length) {
                  if (controller.isLoading) {
                    return Center(
                      child: Platform.isIOS
                          ? const CupertinoActivityIndicator()
                          : const CircularProgressIndicator(),
                    );
                  } else {
                    return TextButton(
                      onPressed: controller.fetchStashpoints,
                      child: const Text('Load More'),
                    );
                  }
                }

                final stashPoint = controller.stashpoints[index];
                return StashPointContainer(
                  stashPoint: stashPoint,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
