// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sem3/widgets/custom_follow_notification.dart';
import 'package:sem3/widgets/custom_liked_notification.dart';

import '../widgets/custom_liked_notification.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});

  final List<String> newItem = ["liked", "follow"];
  final List<String> todayItem = ["follow", "liked", "liked"];
  final List<String> oldestItem = ["follow", "follow", "liked", "liked"]; // Corrected typo in oldestItem

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: newItem.length,
                  itemBuilder: (context, index) {
                    return newItem[index] == "follow"
                        ? const CustomFollowNotifcation()
                        : const CustomLikedNotifcation();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Today",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: todayItem.length,
                  itemBuilder: (context, index) {
                    return todayItem[index] == "follow"
                        ? const CustomFollowNotifcation()
                        : const CustomLikedNotifcation();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Oldest",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: oldestItem.length,
                  itemBuilder: (context, index) {
                    return oldestItem[index] == "follow"
                        ? const CustomFollowNotifcation()
                        : const CustomLikedNotifcation();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
