import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled55/domain/AuthUserFromLogin.dart';
import 'package:untitled55/view/global_widgets/AppbarAndNotifications.dart';

class NotificationsListScreen extends StatefulWidget {
  const NotificationsListScreen({super.key});

  @override
  State<NotificationsListScreen> createState() => _NotificationsListScreenState();
}

class _NotificationsListScreenState extends State<NotificationsListScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {

    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          children: [
            AppBarAndNotifications(),
          ],
        ),
      )
    );
  }
}
