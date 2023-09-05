import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:local_not/notification_services.dart';

class LocalNotificationScreen extends StatefulWidget {
  const LocalNotificationScreen({super.key});

  @override
  State<LocalNotificationScreen> createState() => _LocalNotificationScreenState();
}

class _LocalNotificationScreenState extends State<LocalNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    // AwesomeNotifications().actionStream.listen((action) {
    //   if (action.buttonKeyPressed == "open") {
    //     print("Open button is pressed");
    //   } else if (action.buttonKeyPressed == "delete") {
    //     print("Delete button is pressed.");
    //   } else {
    //     print(action.payload); //notification was pressed
    //   }
    // });
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Notification in Flutter"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  NotificationService()
                      .showNotification(title: 'This is Title', body: 'It must work!');
                },
                child: Text("Show Notification With Button")),
          ],
        ),
      ),
    );
  }
}
