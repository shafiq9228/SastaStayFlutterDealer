import 'dart:convert';
import 'dart:ui';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:awesome_notifications/awesome_notifications.dart';


class FireBaseNotification {
  final _firebaseMessaging = FirebaseMessaging.instance;

  /// Initialize Awesome Notifications
  Future<void> initAwesomeNotification() async {
    AwesomeNotifications().initialize(
        null, // app icon
        [
          NotificationChannel(
              channelKey: 'basic_channel',
              channelName: 'Basic Notifications',
              channelDescription: 'Notification channel for basic tests',
              importance: NotificationImportance.Max
          ),
        ],
        debug: true
    );

    // Request notification permissions
    await _firebaseMessaging.requestPermission();
    await AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  /// Handle notification click (when user taps the notification)
  void setListeners(){
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print("Notification clicked: ${message.data}");
      // TODO: Navigate to page using message.data
    });

    // AwesomeNotifications().actionStream.listen((receivedAction) {
    //   print("User tapped notification: ${receivedAction.payload}");
    // });
  }


  void initPushNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      final notification = message.notification;
      if (notification == null) return;

      final imageUrl = notification.android?.imageUrl ?? notification.apple?.imageUrl;
      print("📷 Notification image URL: $imageUrl");

      AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: DateTime.now().millisecondsSinceEpoch.remainder(100000),
          channelKey: 'basic_channel',
          title: notification.title,
          body: notification.body,
          bigPicture: imageUrl,
          largeIcon: imageUrl,
          notificationLayout:((imageUrl != null) || (imageUrl != ""))? NotificationLayout.BigPicture : NotificationLayout.Default,
        ),
      );
    });
  }

  /// Call this in main.dart
  Future<void> initNotifications() async {
    await initAwesomeNotification();
    initPushNotification();
    setListeners();
  }
}


