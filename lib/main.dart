import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatekeeper/Routes/routes_managment.dart';
import 'package:gatekeeper/Routes/set_routes.dart';
import 'package:get/get.dart';
import 'package:pusher_client/pusher_client.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
const String YOUR_APP_KEY = '3c358bce6465e1821b3b';
late PusherClient pusher;

main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'AIzaSyDs7889PirDMygOld062sKi0hmnOEVE_tE',
    appId: '1:334819000485:web:5398weew88a23eeb5ae6fb3c',
    messagingSenderId: '334890062485',
    projectId: 'sample-49732',
  ));

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings("@mipmap/ic_launcher");

  InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    // iOS:  initializationSettingsDarwin
  );
  bool? initialized =
      await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  print(initialized.toString());

  runApp(MyApp());
}

void checkForNotifications() async {
  NotificationAppLaunchDetails? no =
      await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
  print(no?.notificationResponse?.payload);
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("s" + message.from.toString());
  print("s" + message.category.toString());
  print("s" + message.data.toString());

  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  // await Firebase.initializeApp();

  print("Handling a background message: ${message}");
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseMessaging.instance.getToken().then((value) {
      String? token = value;
      print('Fire Base token');
      print('--------');
      print(token);
      print('--------');
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: splashscreen,
            getPages: RouteManagement.getPages(),
          );
        });
  }
}
